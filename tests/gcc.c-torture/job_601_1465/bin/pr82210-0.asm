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
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movl	%edi, -84(%rbp)
	movq	%rsp, %rax
	movq	%rax, %rbx
	movl	-84(%rbp), %esi
	movslq	%esi, %rax
	movq	%rax, %rdx
	movl	$0, %ecx
	movslq	%esi, %rax
	subq	$1, %rax
	movq	%rax, -64(%rbp)
	movslq	%esi, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movslq	%esi, %rax
	leaq	(%rax,%rax), %rdi
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	movslq	%ecx, %rax
	subq	$1, %rax
	movq	%rax, -72(%rbp)
	movslq	%ecx, %rax
	movq	%rax, -112(%rbp)
	movq	$0, -104(%rbp)
	movslq	%esi, %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	%r10, %rax
	movq	%r11, %rdx
	shldq	$3, %rax, %rdx
	salq	$3, %rax
	addq	$127, %rax
	adcq	$0, %rdx
	movq	%rax, %r11
	andq	$-128, %r11
	movq	%r11, -128(%rbp)
	movq	%rdx, %rax
	andb	$255, %ah
	movq	%rax, -120(%rbp)
	movslq	%esi, %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %r8
	movl	$0, %r9d
	movq	%r8, %rax
	movq	%r9, %rdx
	shldq	$3, %rax, %rdx
	salq	$3, %rax
	addq	$127, %rax
	adcq	$0, %rdx
	movq	%rax, %r9
	andq	$-128, %r9
	movq	%r9, -144(%rbp)
	movq	%rdx, %rax
	andb	$255, %ah
	movq	%rax, -136(%rbp)
	movslq	%esi, %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	15(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -80(%rbp)
	movl	$0, -52(%rbp)
	jmp	L26
L27:
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	movw	$4660, (%rax,%rdx,2)
	addl	$1, -52(%rbp)
L26:
	movl	-52(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	L27
	movl	$0, -52(%rbp)
	jmp	L28
L29:
	movq	%rdi, %rcx
	shrq	$4, %rcx
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	$0, (%rax,%rdx,4)
	addl	$1, -52(%rbp)
L28:
	movl	-52(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	L29
	movl	$0, -52(%rbp)
	jmp	L30
L33:
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rax,%rdx,2), %eax
	cmpw	$4660, %ax
	jne	L31
	movq	%rdi, %rcx
	shrq	$4, %rcx
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	(%rax,%rdx,4), %eax
	testl	%eax, %eax
	je	L32
L31:
	call	abort
L32:
	addl	$1, -52(%rbp)
L30:
	movl	-52(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	L33
	movq	%rbx, %rsp
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$15, %edi
	call	foo
	movl	$0, %eax
	popq	%rbp
	ret
