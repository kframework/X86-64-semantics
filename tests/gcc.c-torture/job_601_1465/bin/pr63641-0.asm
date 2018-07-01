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
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	cmpb	$8, -4(%rbp)
	ja	L10
	jmp	L11
L10:
	cmpb	$11, -4(%rbp)
	jne	L12
	jmp	L11
L12:
	cmpb	$13, -4(%rbp)
	jbe	L13
	cmpb	$26, -4(%rbp)
	ja	L13
	jmp	L11
L13:
	cmpb	$27, -4(%rbp)
	jbe	L14
	cmpb	$31, -4(%rbp)
	ja	L14
	jmp	L11
L14:
	movl	$0, %eax
	jmp	L15
L11:
	movl	$1, %eax
L15:
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	cmpb	$8, -4(%rbp)
	ja	L17
	jmp	L18
L17:
	cmpb	$11, -4(%rbp)
	jne	L19
	jmp	L18
L19:
	cmpb	$13, -4(%rbp)
	jbe	L20
	cmpb	$26, -4(%rbp)
	ja	L20
	jmp	L18
L20:
	cmpb	$59, -4(%rbp)
	jbe	L21
	cmpb	$63, -4(%rbp)
	ja	L21
	jmp	L18
L21:
	movl	$0, %eax
	jmp	L22
L18:
	movl	$1, %eax
L22:
	popq	%rbp
	ret
tab1:
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
tab2:
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	L24
L28:
	movl	-4(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	foo
	movl	%eax, %edx
	cmpl	$31, -4(%rbp)
	jg	L25
	movl	-4(%rbp), %eax
	cltq
	movzbl	tab1(%rax), %eax
	movsbl	%al, %eax
	jmp	L26
L25:
	movl	$0, %eax
L26:
	cmpl	%eax, %edx
	je	L27
	call	abort
L27:
	addl	$1, -4(%rbp)
L24:
	cmpl	$255, -4(%rbp)
	jle	L28
	movl	$0, -4(%rbp)
	jmp	L29
L33:
	movl	-4(%rbp), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	bar
	movl	%eax, %edx
	cmpl	$63, -4(%rbp)
	jg	L30
	movl	-4(%rbp), %eax
	cltq
	movzbl	tab2(%rax), %eax
	movsbl	%al, %eax
	jmp	L31
L30:
	movl	$0, %eax
L31:
	cmpl	%eax, %edx
	je	L32
	call	abort
L32:
	addl	$1, -4(%rbp)
L29:
	cmpl	$255, -4(%rbp)
	jle	L33
	movl	$0, %eax
	leave
	ret
