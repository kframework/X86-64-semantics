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
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	L8
L9:
	addq	$1, -8(%rbp)
L8:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L9
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
L12:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L12
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
memcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L15
L18:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	L16
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	L17
L16:
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
L15:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L18
	movl	$0, %eax
L17:
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
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	L22
L23:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
L22:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L23
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	L26
L27:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
L26:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L27
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
malloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
calloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
free:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
isprint:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$96, -4(%rbp)
	jle	L35
	cmpl	$122, -4(%rbp)
	jg	L35
	movl	$1, %eax
	jmp	L36
L35:
	cmpl	$64, -4(%rbp)
	jle	L37
	cmpl	$90, -4(%rbp)
	jg	L37
	movl	$1, %eax
	jmp	L36
L37:
	cmpl	$47, -4(%rbp)
	jle	L38
	cmpl	$57, -4(%rbp)
	jg	L38
	movl	$1, %eax
	jmp	L36
L38:
	movl	$0, %eax
L36:
	popq	%rbp
	ret
gcd_ll:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
L43:
	cmpq	$0, -16(%rbp)
	jne	L40
	movq	-8(%rbp), %rax
	jmp	L41
L40:
	movq	-8(%rbp), %rax
	movl	$0, %edx
	divq	-16(%rbp)
	movq	%rdx, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	L42
	movq	-16(%rbp), %rax
	jmp	L41
L42:
	movq	-16(%rbp), %rax
	movl	$0, %edx
	divq	-8(%rbp)
	movq	%rdx, -16(%rbp)
	jmp	L43
L41:
	popq	%rbp
	ret
powmod_ll:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	cmpl	$0, -44(%rbp)
	jne	L45
	movl	$1, %eax
	jmp	L46
L45:
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$0, -20(%rbp)
	jmp	L47
L48:
	shrl	-4(%rbp)
	addl	$1, -20(%rbp)
L47:
	cmpl	$0, -4(%rbp)
	jne	L48
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	subl	$2, -20(%rbp)
	jmp	L49
L51:
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
	je	L50
	movq	-16(%rbp), %rax
	imulq	-40(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movq	%rdx, -16(%rbp)
L50:
	subl	$1, -20(%rbp)
L49:
	cmpl	$0, -20(%rbp)
	jns	L51
	movq	-16(%rbp), %rax
L46:
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
	jmp	L53
L58:
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
	jbe	L54
	movq	-16(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	L55
L54:
	movq	-24(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
L55:
	movq	-32(%rbp), %rax
	imulq	-48(%rbp), %rax
	movl	$0, %edx
	divq	-88(%rbp)
	movq	%rdx, -32(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jne	L56
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
	je	L56
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
	jne	L56
	jmp	L52
L56:
	addl	$1, -36(%rbp)
L53:
	cmpl	$9999, -36(%rbp)
	jle	L58
L52:
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
	jne	L60
	movq	factab+8(%rip), %rax
	cmpq	$73, %rax
	jne	L60
	movq	factab+16(%rip), %rax
	cmpq	$262657, %rax
	je	L61
L60:
	call	abort
L61:
	movl	$0, %edi
	call	exit
