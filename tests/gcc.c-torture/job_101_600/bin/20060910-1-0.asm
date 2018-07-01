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
input_getc_complicated:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	ret
check_header:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	L12
L17:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jae	L13
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, %eax
	jmp	L14
L13:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	input_getc_complicated
	shrl	$31, %eax
L14:
	testb	%al, %al
	je	L15
	movl	$0, %eax
	jmp	L16
L15:
	addl	$1, -4(%rbp)
L12:
	cmpl	$5, -4(%rbp)
	jbe	L17
	movl	$1, %eax
L16:
	leave
	ret
	.comm	s,16,16
	.comm	b,6,1
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$b, s(%rip)
	movq	$b+6, s+8(%rip)
	movl	$s, %edi
	call	check_header
	testl	%eax, %eax
	jne	L19
	call	abort
L19:
	movq	s(%rip), %rdx
	movq	s+8(%rip), %rax
	cmpq	%rax, %rdx
	je	L20
	call	abort
L20:
	movl	$0, %eax
	popq	%rbp
	ret
