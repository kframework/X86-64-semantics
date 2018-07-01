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
	.comm	to_input,20,16
	.comm	from_input,20,16
assemblez_1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	16(%rbp), %edx
	movl	from_input(%rip), %eax
	cmpl	%eax, %edx
	je	L9
	call	abort
L9:
	leave
	ret
t0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	20(%rbp), %eax
	testl	%eax, %eax
	jne	L12
	subq	$8, %rsp
	subq	$24, %rsp
	movq	%rsp, %rax
	movq	40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	56(%rbp), %edx
	movl	%edx, 16(%rax)
	movl	$32, %edi
	call	assemblez_1
	addq	$32, %rsp
	jmp	L14
L12:
	call	abort
L14:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, to_input+4(%rip)
	movl	$1, to_input(%rip)
	movl	$2, to_input+8(%rip)
	movl	$3, to_input+12(%rip)
	movl	$4, to_input+16(%rip)
	movl	$5, from_input+4(%rip)
	movl	$6, from_input(%rip)
	movl	$7, from_input+8(%rip)
	movl	$8, from_input+12(%rip)
	movl	$9, from_input+16(%rip)
	subq	$24, %rsp
	movq	%rsp, %rax
	movq	from_input(%rip), %rdx
	movq	%rdx, (%rax)
	movq	from_input+8(%rip), %rdx
	movq	%rdx, 8(%rax)
	movl	from_input+16(%rip), %edx
	movl	%edx, 16(%rax)
	subq	$24, %rsp
	movq	%rsp, %rax
	movq	to_input(%rip), %rdx
	movq	%rdx, (%rax)
	movq	to_input+8(%rip), %rdx
	movq	%rdx, 8(%rax)
	movl	to_input+16(%rip), %edx
	movl	%edx, 16(%rax)
	call	t0
	addq	$48, %rsp
	movl	$0, %eax
	leave
	ret
