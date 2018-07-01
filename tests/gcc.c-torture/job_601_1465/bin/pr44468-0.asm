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
	.comm	s,12,4
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -8(%rbp)
	movl	$0, s+4(%rip)
	movq	-8(%rbp), %rax
	movl	$3, (%rax)
	movl	s+4(%rip), %eax
	popq	%rbp
	ret
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -8(%rbp)
	movl	$0, s+4(%rip)
	movq	-8(%rbp), %rax
	movl	$3, (%rax)
	movl	s+4(%rip), %eax
	popq	%rbp
	ret
test3:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, s+4(%rip)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movl	$3, (%rax)
	movl	s+4(%rip), %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, s+4(%rip)
	movl	$2, s+8(%rip)
	movl	$s, %edi
	call	test1
	cmpl	$3, %eax
	je	L16
	call	abort
L16:
	movl	$1, s+4(%rip)
	movl	$2, s+8(%rip)
	movl	$s, %edi
	call	test2
	cmpl	$3, %eax
	je	L17
	call	abort
L17:
	movl	$1, s+4(%rip)
	movl	$2, s+8(%rip)
	movl	$s, %edi
	call	test3
	cmpl	$3, %eax
	je	L18
	call	abort
L18:
	movl	$0, %eax
	popq	%rbp
	ret
