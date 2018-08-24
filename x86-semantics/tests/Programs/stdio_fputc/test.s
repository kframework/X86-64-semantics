strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	L2
L3:
	addq	$1, -8(%rbp)
L2:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	L3
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
LC0:
	.string	"w"
LC1:
	.string	"alphabet.txt"
main:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$136, %rsp
	movq	$40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	stdout(%rip), %rax
	movq	%rax, -128(%rbp)
	movl	$LC0, %esi
	movl	$LC1, %edi
	call	fopen
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
	movl	$0, -136(%rbp)
	jmp	L6
L8:
	addl	$1, -136(%rbp)
L6:
	movl	-136(%rbp), %eax
	movslq	%eax, %rbx
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	%rax, %rbx
	jnb	L7
	movl	-136(%rbp), %eax
	cltq
	movzbl	-112(%rbp,%rax), %eax
	movsbl	%al, %eax
	movq	-128(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fputc
	movl	%eax, -132(%rbp)
	cmpl	$-1, -132(%rbp)
	jne	L8
L7:
	movl	$0, -136(%rbp)
	jmp	L9
L11:
	addl	$1, -136(%rbp)
L9:
	movl	-136(%rbp), %eax
	movslq	%eax, %rbx
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	%rax, %rbx
	jnb	L10
	movl	-136(%rbp), %eax
	cltq
	movzbl	-112(%rbp,%rax), %eax
	movsbl	%al, %eax
	movq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fputc
	movl	%eax, -132(%rbp)
	cmpl	$-1, -132(%rbp)
	jne	L11
L10:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	movl	$0, %eax
	movq	-24(%rbp), %rcx
	xorq	$40, %rcx
	je	L13
L13:
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	ret
