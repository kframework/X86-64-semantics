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
	jne	L41
	call	foo
L41:
	movl	$0, -4(%rbp)
	jmp	L42
L45:
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
	ja	L43
	movzwl	-6(%rbp), %eax
	cltq
	movzbl	v2(%rax), %eax
	jmp	L44
L43:
	movzwl	-6(%rbp), %eax
	movzbl	%al, %eax
	cltq
	movzbl	v3(%rax), %eax
L44:
	movb	%al, (%rdx)
	addl	$1, -4(%rbp)
L42:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	L45
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
	jmp	L48
L49:
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
L48:
	cmpl	$255, -4(%rbp)
	jle	L49
	movl	$0, -4(%rbp)
	jmp	L50
L51:
	movl	-4(%rbp), %eax
	cltq
	movzbl	-112(%rbp,%rax), %eax
	movzbl	%al, %edx
	movl	-4(%rbp), %eax
	cltq
	movw	%dx, -80(%rbp,%rax,2)
	addl	$1, -4(%rbp)
L50:
	cmpl	$17, -4(%rbp)
	jle	L51
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
	jne	L52
	leaq	-32(%rbp), %rax
	movl	$18, %edx
	movl	$LC0, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L53
L52:
	call	abort
L53:
	movl	$0, %eax
	leave
	ret
