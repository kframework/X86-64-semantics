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
	.comm	p,4,4
test:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	p(%rip), %edx
	movl	-4(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	movl	p(%rip), %eax
	movl	%eax, %eax
	subq	%rax, %rdx
	movq	%rdx, %rax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$-2, p(%rip)
	movl	$0, %edi
	call	test
	testq	%rax, %rax
	je	L12
	call	abort
L12:
	movl	$1, %edi
	call	test
	cmpq	$1, %rax
	je	L13
	call	abort
L13:
	movl	$2, %edi
	call	test
	movabsq	$-4294967294, %rdx
	cmpq	%rdx, %rax
	je	L14
	call	abort
L14:
	movl	$-1, p(%rip)
	movl	$0, %edi
	call	test
	testq	%rax, %rax
	je	L15
	call	abort
L15:
	movl	$1, %edi
	call	test
	movabsq	$-4294967295, %rdx
	cmpq	%rdx, %rax
	je	L16
	call	abort
L16:
	movl	$2, %edi
	call	test
	movabsq	$-4294967294, %rdx
	cmpq	%rdx, %rax
	je	L17
	call	abort
L17:
	movl	$0, %eax
	popq	%rbp
	ret
