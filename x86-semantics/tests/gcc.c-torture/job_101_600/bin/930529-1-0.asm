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
	jmp	L17
L18:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
L17:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	L18
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
dd:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$-3, -4(%rbp)
	jmp	L23
L32:
	movl	-4(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	dd
	cmpl	-4(%rbp), %eax
	je	L24
	call	abort
L24:
	movl	-4(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	dd
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	cmpl	%eax, %edx
	je	L25
	call	abort
L25:
	movl	-4(%rbp), %eax
	movl	$3, %esi
	movl	%eax, %edi
	call	dd
	movl	%eax, %esi
	movl	-4(%rbp), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %esi
	je	L26
	call	abort
L26:
	movl	-4(%rbp), %eax
	movl	$4, %esi
	movl	%eax, %edi
	call	dd
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovs	%ecx, %eax
	sarl	$2, %eax
	cmpl	%eax, %edx
	je	L27
	call	abort
L27:
	movl	-4(%rbp), %eax
	movl	$5, %esi
	movl	%eax, %edi
	call	dd
	movl	%eax, %esi
	movl	-4(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %esi
	je	L28
	call	abort
L28:
	movl	-4(%rbp), %eax
	movl	$6, %esi
	movl	%eax, %edi
	call	dd
	movl	%eax, %esi
	movl	-4(%rbp), %ecx
	movl	$715827883, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %esi
	je	L29
	call	abort
L29:
	movl	-4(%rbp), %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	dd
	movl	%eax, %esi
	movl	-4(%rbp), %ecx
	movl	$-1840700269, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %esi
	je	L30
	call	abort
L30:
	movl	-4(%rbp), %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	dd
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	leal	7(%rax), %ecx
	testl	%eax, %eax
	cmovs	%ecx, %eax
	sarl	$3, %eax
	cmpl	%eax, %edx
	je	L31
	call	abort
L31:
	addl	$1, -4(%rbp)
L23:
	cmpl	$3, -4(%rbp)
	jle	L32
	movl	$2147483644, -4(%rbp)
	jmp	L33
L42:
	movl	-4(%rbp), %eax
	movl	$1, %esi
	movl	%eax, %edi
	call	dd
	cmpl	-4(%rbp), %eax
	je	L34
	call	abort
L34:
	movl	-4(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	dd
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	cmpl	%eax, %edx
	je	L35
	call	abort
L35:
	movl	-4(%rbp), %eax
	movl	$3, %esi
	movl	%eax, %edi
	call	dd
	movl	%eax, %esi
	movl	-4(%rbp), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %esi
	je	L36
	call	abort
L36:
	movl	-4(%rbp), %eax
	movl	$4, %esi
	movl	%eax, %edi
	call	dd
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovs	%ecx, %eax
	sarl	$2, %eax
	cmpl	%eax, %edx
	je	L37
	call	abort
L37:
	movl	-4(%rbp), %eax
	movl	$5, %esi
	movl	%eax, %edi
	call	dd
	movl	%eax, %esi
	movl	-4(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %esi
	je	L38
	call	abort
L38:
	movl	-4(%rbp), %eax
	movl	$6, %esi
	movl	%eax, %edi
	call	dd
	movl	%eax, %esi
	movl	-4(%rbp), %ecx
	movl	$715827883, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %esi
	je	L39
	call	abort
L39:
	movl	-4(%rbp), %eax
	movl	$7, %esi
	movl	%eax, %edi
	call	dd
	movl	%eax, %esi
	movl	-4(%rbp), %ecx
	movl	$-1840700269, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %esi
	je	L40
	call	abort
L40:
	movl	-4(%rbp), %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	dd
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	leal	7(%rax), %ecx
	testl	%eax, %eax
	cmovs	%ecx, %eax
	sarl	$3, %eax
	cmpl	%eax, %edx
	je	L41
	call	abort
L41:
	addl	$1, -4(%rbp)
L33:
	movl	-4(%rbp), %eax
	cmpl	$-2147483646, %eax
	jbe	L42
	movl	$0, %edi
	call	exit
