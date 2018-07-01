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
	.comm	global,4,4
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	L10
	movl	global(%rip), %eax
	addl	$1, %eax
	movl	%eax, global(%rip)
	movl	$global, %eax
	jmp	L11
L10:
	movq	$-1, %rax
L11:
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	global(%rip), %eax
	movl	%eax, %edi
	call	foo
	movq	%rax, -8(%rbp)
	cmpq	$-1, -8(%rbp)
	je	L13
	movl	$1, %eax
	jmp	L14
L13:
	movl	global(%rip), %eax
	addl	$1, %eax
	movl	%eax, global(%rip)
	movl	$0, %eax
L14:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, global(%rip)
	call	bar
	testl	%eax, %eax
	je	L16
	call	abort
L16:
	movl	$0, %eax
	popq	%rbp
	ret
