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
	.comm	src,80,16
	.comm	dst,80,16
check:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L39
	call	abort
L39:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	L42
L43:
	movl	-4(%rbp), %ecx
	movl	$1321528399, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$26, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$97, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, src(%rax)
	addl	$1, -4(%rbp)
L42:
	movl	-4(%rbp), %eax
	cmpl	$79, %eax
	jbe	L43
	movl	$0, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movb	$0, dst(%rip)
	movzbl	src(%rip), %eax
	movb	%al, dst(%rip)
	movl	$1, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$2, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$2, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$2, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$3, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$3, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$3, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$4, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$4, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$4, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$5, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$5, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$5, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$6, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$6, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$6, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$7, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$7, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$7, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$8, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$8, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$8, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$9, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$9, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$9, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$10, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$10, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$10, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$11, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$11, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$11, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$12, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$12, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$12, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$13, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$13, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$13, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$14, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$14, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$14, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$15, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$15, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$15, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$16, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$16, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$16, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$17, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$17, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$17, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$18, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$18, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$18, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$19, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$19, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$19, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$20, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$20, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$20, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$21, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$21, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$21, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$22, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$22, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$22, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$23, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$23, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$23, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$24, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$24, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$24, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$25, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$25, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$25, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$26, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$26, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$26, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$27, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$27, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$27, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$28, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$28, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$28, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$29, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$29, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$29, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$30, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$30, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$30, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$31, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$31, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$31, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$32, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$32, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$32, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$33, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$33, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$33, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$34, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$34, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$34, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$35, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$35, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$35, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$36, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$36, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$36, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$37, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$37, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$37, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$38, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$38, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$38, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$39, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$39, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$39, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$40, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$40, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$40, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$41, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$41, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$41, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$42, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$42, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$42, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$43, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$43, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$43, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$44, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$44, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$44, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$45, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$45, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$45, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$46, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$46, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$46, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$47, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$47, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$47, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$48, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$48, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$48, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$49, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$49, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$49, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$50, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$50, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$50, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$51, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$51, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$51, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$52, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$52, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$52, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$53, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$53, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$53, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$54, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$54, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$54, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$55, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$55, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$55, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$56, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$56, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$56, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$57, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$57, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$57, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$58, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$58, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$58, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$59, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$59, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$59, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$60, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$60, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$60, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$61, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$61, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$61, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$62, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$62, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$62, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$63, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$63, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$63, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$64, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$64, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$64, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$65, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$65, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$65, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$66, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$66, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$66, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$67, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$67, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$67, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$68, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$68, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$68, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$69, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$69, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$69, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$70, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$70, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$70, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$71, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$71, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$71, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$72, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$72, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$72, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$73, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$73, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$73, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$74, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$74, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$74, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$75, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$75, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$75, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$76, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$76, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$76, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$77, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$77, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$77, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$78, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$78, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$78, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$79, %edx
	movl	$0, %esi
	movl	$dst, %edi
	call	memset
	movl	$79, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	memcpy
	movl	$79, %edx
	movl	$src, %esi
	movl	$dst, %edi
	call	check
	movl	$0, %eax
	leave
	ret
