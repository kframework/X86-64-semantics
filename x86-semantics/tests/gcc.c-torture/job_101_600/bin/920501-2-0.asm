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
gcd_ll:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
L13:
	cmpq	$0, -16(%rbp)
	jne	L10
	movq	-8(%rbp), %rax
	jmp	L11
L10:
	movq	-8(%rbp), %rax
	movl	$0, %edx
	divq	-16(%rbp)
	movq	%rdx, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	L12
	movq	-16(%rbp), %rax
	jmp	L11
L12:
	movq	-16(%rbp), %rax
	movl	$0, %edx
	divq	-8(%rbp)
	movq	%rdx, -16(%rbp)
	jmp	L13
L11:
	popq	%rbp
	ret
powmod_ll:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	cmpl	$0, -44(%rbp)
	jne	L15
	movl	$1, %eax
	jmp	L16
L15:
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$0, -20(%rbp)
	jmp	L17
L18:
	shrl	-4(%rbp)
	addl	$1, -20(%rbp)
L17:
	cmpl	$0, -4(%rbp)
	jne	L18
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	subl	$2, -20(%rbp)
	jmp	L19
L21:
	movq	-16(%rbp), %rax
	imulq	-16(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movq	%rdx, -16(%rbp)
	movl	-20(%rbp), %eax
	movl	$1, %edx
	shlx	%eax, %edx, %eax
	andl	-44(%rbp), %eax
	testl	%eax, %eax
	je	L20
	movq	-16(%rbp), %rax
	imulq	-40(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movq	%rdx, -16(%rbp)
L20:
	subl	$1, -20(%rbp)
L19:
	cmpl	$0, -20(%rbp)
	jns	L21
	movq	-16(%rbp), %rax
L16:
	popq	%rbp
	ret
	.comm	factab,80,64
facts:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$104, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movl	%edx, -96(%rbp)
	movl	%ecx, -100(%rbp)
	movq	$factab, -8(%rbp)
	movq	$1, -32(%rbp)
	movl	-92(%rbp), %eax
	cltq
	movq	%rax, -64(%rbp)
	movl	$1, -40(%rbp)
	movl	$0, -52(%rbp)
	movl	-96(%rbp), %eax
	cltq
	movq	%rax, -16(%rbp)
	movl	-96(%rbp), %eax
	cltq
	movq	%rax, -24(%rbp)
	movl	$1, -36(%rbp)
	jmp	L23
L28:
	movq	-88(%rbp), %rdx
	movl	-100(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	powmod_ll
	movq	-64(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-88(%rbp), %rdx
	movl	-100(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	powmod_ll
	movq	-64(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rdx
	movl	-100(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	powmod_ll
	movq	-64(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jbe	L24
	movq	-16(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	L25
L24:
	movq	-24(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
L25:
	movq	-32(%rbp), %rax
	imulq	-48(%rbp), %rax
	movl	$0, %edx
	divq	-88(%rbp)
	movq	%rdx, -32(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jne	L26
	addl	$1, -52(%rbp)
	movl	-52(%rbp), %eax
	addl	%eax, -40(%rbp)
	movq	-88(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	gcd_ll
	movq	%rax, -72(%rbp)
	cmpq	$1, -72(%rbp)
	je	L26
	movq	-8(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-72(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movl	$0, %edx
	divq	-72(%rbp)
	movq	%rax, -88(%rbp)
	cmpq	$1, -88(%rbp)
	jne	L26
	jmp	L22
L26:
	addl	$1, -36(%rbp)
L23:
	cmpl	$9999, -36(%rbp)
	jle	L28
L22:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$27, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	$1, %edx
	shlx	%rax, %rdx, %rax
	subq	$1, %rax
	movq	%rax, -16(%rbp)
	movl	$-1, -20(%rbp)
	movl	$3, -24(%rbp)
	movl	-4(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	facts
	movq	factab(%rip), %rax
	cmpq	$7, %rax
	jne	L30
	movq	factab+8(%rip), %rax
	cmpq	$73, %rax
	jne	L30
	movq	factab+16(%rip), %rax
	cmpq	$262657, %rax
	je	L31
L30:
	call	abort
L31:
	movl	$0, %edi
	call	exit
