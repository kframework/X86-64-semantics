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
foo.2257:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%r10, %rsi
	movl	(%rsi), %eax
	leal	1(%rax), %edi
	movl	%edi, (%rsi)
	movslq	%eax, %rsi
	subq	$1, %rsi
	movq	%rsi, -8(%rbp)
	cltq
	movq	%rax, %rdx
	movl	$0, %ecx
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movl	%edi, %eax
	movl	%eax, -96(%rbp)
	movq	%rsp, %rax
	movq	%rax, %r15
	movl	-96(%rbp), %r12d
	movslq	%r12d, %rax
	subq	$1, %rax
	movq	%rax, -56(%rbp)
	movslq	%r12d, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movslq	%r12d, %rax
	movq	%rax, %r8
	movl	$0, %r9d
	movslq	%r12d, %rax
	movq	%rax, %rdx
	movl	$0, %ecx
	movslq	%r12d, %rax
	salq	$3, %rax
	leaq	3(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	-96(%rbp), %rdx
	movq	%rdx, %r10
	movq	%rax, %rdi
	call	foo.2257
	movl	-96(%rbp), %ebx
	movslq	%ebx, %rax
	subq	$1, %rax
	movq	%rax, -72(%rbp)
	movslq	%ebx, %rax
	movq	%rax, -112(%rbp)
	movq	$0, -104(%rbp)
	movslq	%ebx, %rax
	movq	%rax, -128(%rbp)
	movq	$0, -120(%rbp)
	movslq	%ebx, %rax
	movq	%rax, %r13
	movl	$0, %r14d
	movslq	%ebx, %rax
	salq	$3, %rax
	leaq	3(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	-96(%rbp), %rdx
	movq	%rdx, %r10
	movq	%rax, %rdi
	call	foo.2257
	movslq	%r12d, %rax
	salq	$3, %rax
	cmpq	$8, %rax
	je	L11
	call	abort
L11:
	movslq	%ebx, %rax
	salq	$3, %rax
	cmpq	$16, %rax
	je	L12
	call	abort
L12:
	movl	-96(%rbp), %eax
	cmpl	$3, %eax
	je	L13
	call	abort
L13:
	movq	%r15, %rsp
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %edi
	call	bar
	movl	$0, %edi
	call	exit
