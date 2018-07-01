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
mymemcmp1:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
L10:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	%rax, -32(%rbp)
	addq	$1, -8(%rbp)
	addq	$1, -16(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	L10
	movq	-24(%rbp), %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	subl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	ret
mymemcmp2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$56, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	andl	$3, %eax
	cmpq	$1, %rax
	je	L14
	cmpq	$1, %rax
	jb	L15
	cmpq	$3, %rax
	je	L16
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	subq	$16, %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	subq	$16, %rax
	movq	%rax, -48(%rbp)
	addq	$2, -56(%rbp)
	jmp	L17
L16:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	subq	$8, %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	subq	$8, %rax
	movq	%rax, -48(%rbp)
	addq	$1, -56(%rbp)
	jmp	L18
L15:
	cmpq	$0, -56(%rbp)
	jne	L19
	movl	$0, %eax
	jmp	L20
L19:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	L21
L14:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	subq	$1, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	L22
	jmp	L23
L22:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	L21
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mymemcmp1
	jmp	L20
L21:
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	L18
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mymemcmp1
	jmp	L20
L18:
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	L17
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mymemcmp1
	jmp	L20
L17:
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	L24
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mymemcmp1
	jmp	L20
L24:
	movq	-40(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -48(%rbp)
	subq	$4, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	L22
L23:
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	L25
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mymemcmp1
	jmp	L20
L25:
	movl	$0, %eax
L20:
	leave
	ret
mymemcmp3:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$104, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	-88(%rbp), %rax
	andl	$7, %eax
	sall	$3, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	$64, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -72(%rbp)
	andq	$-8, -88(%rbp)
	movq	-104(%rbp), %rax
	andl	$3, %eax
	cmpq	$1, %rax
	je	L28
	cmpq	$1, %rax
	jb	L29
	cmpq	$3, %rax
	je	L30
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	subq	$8, %rax
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	subq	$16, %rax
	movq	%rax, -96(%rbp)
	addq	$2, -104(%rbp)
	jmp	L31
L30:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-96(%rbp), %rax
	subq	$8, %rax
	movq	%rax, -96(%rbp)
	addq	$1, -104(%rbp)
	jmp	L32
L29:
	cmpq	$0, -104(%rbp)
	jne	L33
	movl	$0, %eax
	jmp	L34
L33:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -88(%rbp)
	jmp	L35
L28:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -96(%rbp)
	subq	$1, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	L36
	jmp	L37
L36:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	-68(%rbp), %eax
	movq	-24(%rbp), %rdx
	shrx	%rax, %rdx, %rcx
	movl	-72(%rbp), %eax
	movq	-32(%rbp), %rdx
	shlx	%rax, %rdx, %rax
	orq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	L35
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mymemcmp1
	jmp	L34
L35:
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-96(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	-68(%rbp), %eax
	movq	-32(%rbp), %rdx
	shrx	%rax, %rdx, %rcx
	movl	-72(%rbp), %eax
	movq	-8(%rbp), %rdx
	shlx	%rax, %rdx, %rax
	orq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	L32
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mymemcmp1
	jmp	L34
L32:
	movq	-88(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-96(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	-68(%rbp), %eax
	movq	-8(%rbp), %rdx
	shrx	%rax, %rdx, %rcx
	movl	-72(%rbp), %eax
	movq	-16(%rbp), %rdx
	shlx	%rax, %rdx, %rax
	orq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	L31
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mymemcmp1
	jmp	L34
L31:
	movq	-88(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-96(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	-68(%rbp), %eax
	movq	-16(%rbp), %rdx
	shrx	%rax, %rdx, %rcx
	movl	-72(%rbp), %eax
	movq	-24(%rbp), %rdx
	shlx	%rax, %rdx, %rax
	orq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	L38
	movq	-56(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mymemcmp1
	jmp	L34
L38:
	movq	-88(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -96(%rbp)
	subq	$4, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	L36
L37:
	movl	-68(%rbp), %eax
	movq	-24(%rbp), %rdx
	shrx	%rax, %rdx, %rcx
	movl	-72(%rbp), %eax
	movq	-32(%rbp), %rdx
	shlx	%rax, %rdx, %rax
	orq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	L39
	movq	-64(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mymemcmp1
	jmp	L34
L39:
	movl	$0, %eax
L34:
	leave
	ret
mymemcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	andl	$7, %eax
	testq	%rax, %rax
	jne	L41
	movq	-40(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mymemcmp2
	jmp	L42
L41:
	movq	-40(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mymemcmp3
L42:
	leave
	ret
	.comm	buf,256,64
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$305419896, -16(%rbp)
	movzbl	-16(%rbp), %eax
	cmpb	$120, %al
	jne	L44
	movzbl	-15(%rbp), %eax
	cmpb	$86, %al
	jne	L44
	movzbl	-14(%rbp), %eax
	cmpb	$52, %al
	jne	L44
	movzbl	-13(%rbp), %eax
	cmpb	$18, %al
	je	L45
L44:
	movl	$0, %eax
	jmp	L48
L45:
	movl	$buf, %eax
	andl	$15, %eax
	movq	%rax, %rdx
	movl	$16, %eax
	subq	%rdx, %rax
	addq	$buf, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$9, %rax
	movabsq	$-4639471408890366207, %rsi
	movq	%rsi, (%rax)
	movl	$1438008568, 8(%rax)
	movw	$-29161, 12(%rax)
	movb	$-7, 14(%rax)
	movq	-8(%rbp), %rax
	addq	$152, %rax
	movabsq	$-878121295105870079, %rdi
	movq	%rdi, (%rax)
	movl	$594356919, 8(%rax)
	movw	$18801, 12(%rax)
	movb	$106, 14(%rax)
	movq	-8(%rbp), %rax
	leaq	152(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	$9, %rax
	movl	$33, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	mymemcmp
	cmpl	$-51, %eax
	je	L47
	call	abort
L47:
	movl	$0, %eax
L48:
	leave
	ret
