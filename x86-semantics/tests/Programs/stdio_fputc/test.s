main:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$120, %rsp
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	$stdout, %rax
	movq	%rax, -120(%rbp)
	movabsq	$8031924123371070792, %rax
	movq	%rax, -112(%rbp)
	movq	$6581362, -104(%rbp)
	leaq	-96(%rbp), %rdx
	movl	$0, %eax
	movl	$8, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	movl	$0, -128(%rbp)
	jmp	L2
L4:
	addl	$1, -128(%rbp)
L2:
	movl	-128(%rbp), %eax
	movslq	%eax, %rbx
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	%rax, %rbx
	jnb	L3
	movl	-128(%rbp), %eax
	cltq
	movzbl	-112(%rbp,%rax), %eax
	movsbl	%al, %eax
	movq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fputc
	movl	%eax, -124(%rbp)
	cmpl	$-1, -124(%rbp)
	jne	L4
L3:
	movq	-24(%rbp), %rsi
	xorq	$40, %rsi
	je	L5
L5:
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	ret
