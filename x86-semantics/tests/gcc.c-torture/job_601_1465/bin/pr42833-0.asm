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
helper_neon_rshl_s8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -100(%rbp)
	movl	%esi, -104(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -32(%rbp)
	movzbl	-32(%rbp), %eax
	movb	%al, -1(%rbp)
	cmpb	$7, -1(%rbp)
	jle	L30
	movb	$0, -48(%rbp)
	jmp	L31
L30:
	cmpb	$-8, -1(%rbp)
	jge	L32
	movzbl	-16(%rbp), %eax
	sarb	$7, %al
	movb	%al, -48(%rbp)
	jmp	L31
L32:
	cmpb	$-8, -1(%rbp)
	jne	L33
	movzbl	-16(%rbp), %eax
	movsbl	%al, %edx
	movsbl	-1(%rbp), %eax
	subl	$1, %eax
	sarx	%eax, %edx, %eax
	movb	%al, -48(%rbp)
	movzbl	-48(%rbp), %eax
	addl	$1, %eax
	movb	%al, -48(%rbp)
	movzbl	-48(%rbp), %eax
	sarb	%al
	movb	%al, -48(%rbp)
	jmp	L31
L33:
	cmpb	$0, -1(%rbp)
	jns	L34
	movzbl	-16(%rbp), %eax
	movsbl	%al, %eax
	movsbl	-1(%rbp), %edx
	notl	%edx
	movl	$1, %ecx
	shlx	%edx, %ecx, %edx
	addl	%eax, %edx
	movsbl	-1(%rbp), %eax
	negl	%eax
	sarx	%eax, %edx, %eax
	movb	%al, -48(%rbp)
	jmp	L31
L34:
	movzbl	-16(%rbp), %eax
	movsbl	%al, %edx
	movsbl	-1(%rbp), %eax
	shlx	%eax, %edx, %eax
	movb	%al, -48(%rbp)
L31:
	movzbl	-31(%rbp), %eax
	movb	%al, -2(%rbp)
	cmpb	$7, -2(%rbp)
	jle	L35
	movb	$0, -47(%rbp)
	jmp	L36
L35:
	cmpb	$-8, -2(%rbp)
	jge	L37
	movzbl	-15(%rbp), %eax
	sarb	$7, %al
	movb	%al, -47(%rbp)
	jmp	L36
L37:
	cmpb	$-8, -2(%rbp)
	jne	L38
	movzbl	-15(%rbp), %eax
	movsbl	%al, %edx
	movsbl	-2(%rbp), %eax
	subl	$1, %eax
	sarx	%eax, %edx, %eax
	movb	%al, -47(%rbp)
	movzbl	-47(%rbp), %eax
	addl	$1, %eax
	movb	%al, -47(%rbp)
	movzbl	-47(%rbp), %eax
	sarb	%al
	movb	%al, -47(%rbp)
	jmp	L36
L38:
	cmpb	$0, -2(%rbp)
	jns	L39
	movzbl	-15(%rbp), %eax
	movsbl	%al, %eax
	movsbl	-2(%rbp), %edx
	notl	%edx
	movl	$1, %ecx
	shlx	%edx, %ecx, %edx
	addl	%eax, %edx
	movsbl	-2(%rbp), %eax
	negl	%eax
	sarx	%eax, %edx, %eax
	movb	%al, -47(%rbp)
	jmp	L36
L39:
	movzbl	-15(%rbp), %eax
	movsbl	%al, %edx
	movsbl	-2(%rbp), %eax
	shlx	%eax, %edx, %eax
	movb	%al, -47(%rbp)
L36:
	movzbl	-30(%rbp), %eax
	movb	%al, -3(%rbp)
	cmpb	$7, -3(%rbp)
	jle	L40
	movb	$0, -46(%rbp)
	jmp	L41
L40:
	cmpb	$-8, -3(%rbp)
	jge	L42
	movzbl	-14(%rbp), %eax
	sarb	$7, %al
	movb	%al, -46(%rbp)
	jmp	L41
L42:
	cmpb	$-8, -3(%rbp)
	jne	L43
	movzbl	-14(%rbp), %eax
	movsbl	%al, %edx
	movsbl	-3(%rbp), %eax
	subl	$1, %eax
	sarx	%eax, %edx, %eax
	movb	%al, -46(%rbp)
	movzbl	-46(%rbp), %eax
	addl	$1, %eax
	movb	%al, -46(%rbp)
	movzbl	-46(%rbp), %eax
	sarb	%al
	movb	%al, -46(%rbp)
	jmp	L41
L43:
	cmpb	$0, -3(%rbp)
	jns	L44
	movzbl	-14(%rbp), %eax
	movsbl	%al, %eax
	movsbl	-3(%rbp), %edx
	notl	%edx
	movl	$1, %ecx
	shlx	%edx, %ecx, %edx
	addl	%eax, %edx
	movsbl	-3(%rbp), %eax
	negl	%eax
	sarx	%eax, %edx, %eax
	movb	%al, -46(%rbp)
	jmp	L41
L44:
	movzbl	-14(%rbp), %eax
	movsbl	%al, %edx
	movsbl	-3(%rbp), %eax
	shlx	%eax, %edx, %eax
	movb	%al, -46(%rbp)
L41:
	movzbl	-29(%rbp), %eax
	movb	%al, -4(%rbp)
	cmpb	$7, -4(%rbp)
	jle	L45
	movb	$0, -45(%rbp)
	jmp	L46
L45:
	cmpb	$-8, -4(%rbp)
	jge	L47
	movzbl	-13(%rbp), %eax
	sarb	$7, %al
	movb	%al, -45(%rbp)
	jmp	L46
L47:
	cmpb	$-8, -4(%rbp)
	jne	L48
	movzbl	-13(%rbp), %eax
	movsbl	%al, %edx
	movsbl	-4(%rbp), %eax
	subl	$1, %eax
	sarx	%eax, %edx, %eax
	movb	%al, -45(%rbp)
	movzbl	-45(%rbp), %eax
	addl	$1, %eax
	movb	%al, -45(%rbp)
	movzbl	-45(%rbp), %eax
	sarb	%al
	movb	%al, -45(%rbp)
	jmp	L46
L48:
	cmpb	$0, -4(%rbp)
	jns	L49
	movzbl	-13(%rbp), %eax
	movsbl	%al, %eax
	movsbl	-4(%rbp), %edx
	notl	%edx
	movl	$1, %ecx
	shlx	%edx, %ecx, %edx
	addl	%eax, %edx
	movsbl	-4(%rbp), %eax
	negl	%eax
	sarx	%eax, %edx, %eax
	movb	%al, -45(%rbp)
	jmp	L46
L49:
	movzbl	-13(%rbp), %eax
	movsbl	%al, %edx
	movsbl	-4(%rbp), %eax
	shlx	%eax, %edx, %eax
	movb	%al, -45(%rbp)
L46:
	movl	-48(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$16843009, %esi
	movl	$84215045, %edi
	call	helper_neon_rshl_s8
	movl	%eax, -4(%rbp)
	cmpl	$168430090, -4(%rbp)
	je	L52
	call	abort
L52:
	movl	$0, %eax
	leave
	ret
