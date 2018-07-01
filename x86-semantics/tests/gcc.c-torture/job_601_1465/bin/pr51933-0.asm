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
	.local	v1
	.comm	v1,1,1
	.local	v2
	.comm	v2,256,64
	.local	v3
	.comm	v3,256,64
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movzbl	v1(%rip), %eax
	testb	%al, %al
	jne	L11
	call	foo
L11:
	movl	$0, -4(%rbp)
	jmp	L12
L15:
	movl	-4(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -6(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	cmpw	$255, -6(%rbp)
	ja	L13
	movzwl	-6(%rbp), %eax
	cltq
	movzbl	v2(%rax), %eax
	jmp	L14
L13:
	movzwl	-6(%rbp), %eax
	movzbl	%al, %eax
	cltq
	movzbl	v3(%rax), %eax
L14:
	movb	%al, (%rdx)
	addl	$1, -4(%rbp)
L12:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	L15
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	-20(%rbp), %eax
	leave
	ret
LC0:
	.string	"abcdeghhijkmmnoqq"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movabsq	$7523094288207667809, %rax
	movq	%rax, -112(%rbp)
	movabsq	$8101815670912281193, %rax
	movq	%rax, -104(%rbp)
	movw	$113, -96(%rbp)
	movl	$0, -4(%rbp)
	jmp	L18
L19:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, v2(%rax)
	movl	-4(%rbp), %eax
	leal	1(%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, v3(%rax)
	addl	$1, -4(%rbp)
L18:
	cmpl	$255, -4(%rbp)
	jle	L19
	movl	$0, -4(%rbp)
	jmp	L20
L21:
	movl	-4(%rbp), %eax
	cltq
	movzbl	-112(%rbp,%rax), %eax
	movzbl	%al, %edx
	movl	-4(%rbp), %eax
	cltq
	movw	%dx, -80(%rbp,%rax,2)
	addl	$1, -4(%rbp)
L20:
	cmpl	$17, -4(%rbp)
	jle	L21
	movzwl	-70(%rbp), %eax
	orb	$6, %ah
	movw	%ax, -70(%rbp)
	movzwl	-68(%rbp), %eax
	orb	$5, %ah
	movw	%ax, -68(%rbp)
	movzwl	-58(%rbp), %eax
	orb	$32, %ah
	movw	%ax, -58(%rbp)
	movzwl	-50(%rbp), %eax
	orb	$5, %ah
	movw	%ax, -50(%rbp)
	call	foo
	leaq	-32(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movl	$17, %edi
	call	bar
	cmpl	$17, %eax
	jne	L22
	leaq	-32(%rbp), %rax
	movl	$18, %edx
	movl	$LC0, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L23
L22:
	call	abort
L23:
	movl	$0, %eax
	leave
	ret
