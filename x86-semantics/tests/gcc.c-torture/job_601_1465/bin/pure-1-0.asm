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
func2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	i(%rip), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	popq	%rbp
	ret
func3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	popq	%rbp
	ret
func4:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	func0
	movl	-4(%rbp), %edx
	addl	%edx, %eax
	leave
	ret
func5:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	func1
	movl	-4(%rbp), %edx
	addl	%edx, %eax
	leave
	ret
func6:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	func2
	movl	-4(%rbp), %edx
	addl	%edx, %eax
	leave
	ret
func7:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	call	func3
	movl	-4(%rbp), %edx
	addl	%edx, %eax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	$0, -48(%rbp)
	movl	$0, %edi
	call	func0
	movl	%eax, -4(%rbp)
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	je	L22
	call	link_error0
L22:
	movl	$0, -44(%rbp)
	movl	$0, %edi
	call	func1
	movl	%eax, -4(%rbp)
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	je	L23
	call	link_error1
L23:
	movl	$0, -40(%rbp)
	movl	$0, %edi
	call	func2
	movl	%eax, -4(%rbp)
	movl	-40(%rbp), %eax
	testl	%eax, %eax
	je	L24
	call	link_error2
L24:
	movl	$0, -36(%rbp)
	movl	$0, %edi
	call	func3
	movl	%eax, -4(%rbp)
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	je	L25
	call	link_error3
L25:
	movl	$0, -32(%rbp)
	movl	$0, %edi
	call	func4
	movl	%eax, -4(%rbp)
	movl	-32(%rbp), %eax
	testl	%eax, %eax
	je	L26
	call	link_error4
L26:
	movl	$0, -28(%rbp)
	movl	$0, %edi
	call	func5
	movl	%eax, -4(%rbp)
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	je	L27
	call	link_error5
L27:
	movl	$0, -24(%rbp)
	movl	$0, %edi
	call	func6
	movl	%eax, -4(%rbp)
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	je	L28
	call	link_error6
L28:
	movl	$0, -20(%rbp)
	movl	$0, %edi
	call	func7
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	je	L29
	call	link_error7
L29:
	movl	-4(%rbp), %eax
	leave
	ret
func0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	i(%rip), %eax
	movl	-4(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	ret
func1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	$0, %eax
	popq	%rbp
	ret
i:
	.long	2
link_error0:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	ret
link_error1:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	ret
link_error2:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	ret
link_error3:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	ret
link_error4:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	ret
link_error5:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	ret
link_error6:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	ret
link_error7:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	ret
