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
free:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	L33
	movabsq	$81985529216486895, %rax
	cmpq	%rax, -16(%rbp)
	jne	L33
	cmpl	$85, -8(%rbp)
	je	L32
L33:
	call	abort
L32:
	leave
	ret
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	cmpl	$1, -4(%rbp)
	jne	L36
	cmpl	$2, -8(%rbp)
	jne	L36
	movabsq	$81985529216486895, %rax
	cmpq	%rax, -16(%rbp)
	jne	L36
	cmpl	$85, -20(%rbp)
	je	L35
L36:
	call	abort
L35:
	leave
	ret
test3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -16(%rbp)
	cmpl	$1, -4(%rbp)
	jne	L39
	cmpl	$2, -8(%rbp)
	jne	L39
	cmpl	$3, -12(%rbp)
	jne	L39
	movabsq	$81985529216486895, %rax
	cmpq	%rax, -24(%rbp)
	jne	L39
	cmpl	$85, -16(%rbp)
	je	L38
L39:
	call	abort
L38:
	leave
	ret
test4:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movq	%r8, -24(%rbp)
	movl	%r9d, -28(%rbp)
	cmpl	$1, -4(%rbp)
	jne	L42
	cmpl	$2, -8(%rbp)
	jne	L42
	cmpl	$3, -12(%rbp)
	jne	L42
	cmpl	$4, -16(%rbp)
	jne	L42
	movabsq	$81985529216486895, %rax
	cmpq	%rax, -24(%rbp)
	jne	L42
	cmpl	$85, -28(%rbp)
	je	L41
L42:
	call	abort
L41:
	leave
	ret
test5:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movq	%r9, -32(%rbp)
	cmpl	$1, -4(%rbp)
	jne	L45
	cmpl	$2, -8(%rbp)
	jne	L45
	cmpl	$3, -12(%rbp)
	jne	L45
	cmpl	$4, -16(%rbp)
	jne	L45
	cmpl	$5, -20(%rbp)
	jne	L45
	movabsq	$81985529216486895, %rax
	cmpq	%rax, -32(%rbp)
	jne	L45
	cmpl	$85, 16(%rbp)
	je	L44
L45:
	call	abort
L44:
	leave
	ret
test6:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	%r9d, -24(%rbp)
	cmpl	$1, -4(%rbp)
	jne	L48
	cmpl	$2, -8(%rbp)
	jne	L48
	cmpl	$3, -12(%rbp)
	jne	L48
	cmpl	$4, -16(%rbp)
	jne	L48
	cmpl	$5, -20(%rbp)
	jne	L48
	cmpl	$6, -24(%rbp)
	jne	L48
	movabsq	$81985529216486895, %rax
	cmpq	%rax, 16(%rbp)
	jne	L48
	cmpl	$85, 24(%rbp)
	je	L47
L48:
	call	abort
L47:
	leave
	ret
test7:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	%r9d, -24(%rbp)
	cmpl	$1, -4(%rbp)
	jne	L51
	cmpl	$2, -8(%rbp)
	jne	L51
	cmpl	$3, -12(%rbp)
	jne	L51
	cmpl	$4, -16(%rbp)
	jne	L51
	cmpl	$5, -20(%rbp)
	jne	L51
	cmpl	$6, -24(%rbp)
	jne	L51
	cmpl	$7, 16(%rbp)
	jne	L51
	movabsq	$81985529216486895, %rax
	cmpq	%rax, 24(%rbp)
	jne	L51
	cmpl	$85, 32(%rbp)
	je	L50
L51:
	call	abort
L50:
	leave
	ret
test8:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	%r9d, -24(%rbp)
	cmpl	$1, -4(%rbp)
	jne	L54
	cmpl	$2, -8(%rbp)
	jne	L54
	cmpl	$3, -12(%rbp)
	jne	L54
	cmpl	$4, -16(%rbp)
	jne	L54
	cmpl	$5, -20(%rbp)
	jne	L54
	cmpl	$6, -24(%rbp)
	jne	L54
	cmpl	$7, 16(%rbp)
	jne	L54
	cmpl	$8, 24(%rbp)
	jne	L54
	movabsq	$81985529216486895, %rax
	cmpq	%rax, 32(%rbp)
	jne	L54
	cmpl	$85, 40(%rbp)
	je	L53
L54:
	call	abort
L53:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$85, %edx
	movabsq	$81985529216486895, %rsi
	movl	$1, %edi
	call	test1
	movl	$85, %ecx
	movabsq	$81985529216486895, %rdx
	movl	$2, %esi
	movl	$1, %edi
	call	test2
	movl	$85, %r8d
	movabsq	$81985529216486895, %rcx
	movl	$3, %edx
	movl	$2, %esi
	movl	$1, %edi
	call	test3
	movl	$85, %r9d
	movabsq	$81985529216486895, %r8
	movl	$4, %ecx
	movl	$3, %edx
	movl	$2, %esi
	movl	$1, %edi
	call	test4
	pushq	$85
	movabsq	$81985529216486895, %r9
	movl	$5, %r8d
	movl	$4, %ecx
	movl	$3, %edx
	movl	$2, %esi
	movl	$1, %edi
	call	test5
	addq	$8, %rsp
	pushq	$85
	pushq	$-1985229329
	movl	$19088743, 4(%rsp)
	movl	$6, %r9d
	movl	$5, %r8d
	movl	$4, %ecx
	movl	$3, %edx
	movl	$2, %esi
	movl	$1, %edi
	call	test6
	addq	$16, %rsp
	pushq	$85
	pushq	$-1985229329
	movl	$19088743, 4(%rsp)
	pushq	$7
	movl	$6, %r9d
	movl	$5, %r8d
	movl	$4, %ecx
	movl	$3, %edx
	movl	$2, %esi
	movl	$1, %edi
	call	test7
	addq	$24, %rsp
	pushq	$85
	pushq	$-1985229329
	movl	$19088743, 4(%rsp)
	pushq	$8
	pushq	$7
	movl	$6, %r9d
	movl	$5, %r8d
	movl	$4, %ecx
	movl	$3, %edx
	movl	$2, %esi
	movl	$1, %edi
	call	test8
	addq	$32, %rsp
	movl	$0, %edi
	call	exit
