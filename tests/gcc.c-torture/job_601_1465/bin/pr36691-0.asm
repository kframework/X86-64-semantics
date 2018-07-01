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
	.comm	g_5,1,1
func_1:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$9, g_5(%rip)
	jmp	L10
L11:
	movzbl	g_5(%rip), %eax
	subl	$5, %eax
	movb	%al, g_5(%rip)
L10:
	movzbl	g_5(%rip), %eax
	cmpb	$3, %al
	ja	L11
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	func_1
	movzbl	g_5(%rip), %eax
	testb	%al, %al
	je	L13
	call	abort
L13:
	movl	$0, %eax
	popq	%rbp
	ret
