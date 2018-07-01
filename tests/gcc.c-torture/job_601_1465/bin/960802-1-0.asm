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
val:
	.quad	1577058304
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$306, %eax
	popq	%rbp
	ret
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1577058304, %eax
	popq	%rbp
	ret
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, val(%rip)
	popq	%rbp
	ret
f4:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	call	f1
	movq	%rax, -8(%rbp)
	call	f2
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	andl	$16777215, %eax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	andl	$4278190080, %eax
	orq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	f3
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	f4
	movq	val(%rip), %rax
	cmpq	$1577058610, %rax
	je	L16
	call	abort
L16:
	movl	$0, %edi
	call	exit
