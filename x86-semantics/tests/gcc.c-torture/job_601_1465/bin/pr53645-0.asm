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
uq4444:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vmovd	%xmm0, %eax
	shrl	$2, %eax
	movl	%eax, %ecx
	vpextrd	$1, %xmm0, %eax
	shrl	$2, %eax
	movl	%eax, %edx
	vpextrd	$2, %xmm0, %eax
	shrl	$2, %eax
	movl	%eax, %esi
	vpextrd	$3, %xmm0, %eax
	shrl	$2, %eax
	vmovd	%esi, %xmm2
	vpinsrd	$1, %eax, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	vmovd	%ecx, %xmm4
	vpinsrd	$1, %edx, %xmm4, %xmm3
	vmovq	%xmm3, %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vpunpcklqdq	%xmm6, %xmm5, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
ur4444:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vmovd	%xmm0, %eax
	andl	$3, %eax
	movl	%eax, %ecx
	vpextrd	$1, %xmm0, %eax
	andl	$3, %eax
	movl	%eax, %edx
	vpextrd	$2, %xmm0, %eax
	andl	$3, %eax
	movl	%eax, %esi
	vpextrd	$3, %xmm0, %eax
	andl	$3, %eax
	vmovd	%esi, %xmm2
	vpinsrd	$1, %eax, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	vmovd	%ecx, %xmm4
	vpinsrd	$1, %edx, %xmm4, %xmm3
	vmovq	%xmm3, %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vpunpcklqdq	%xmm6, %xmm5, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
sq4444:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vmovd	%xmm0, %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	movl	%eax, %esi
	vpextrd	$1, %xmm0, %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	movl	%eax, %edx
	vpextrd	$2, %xmm0, %eax
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovs	%ecx, %eax
	sarl	$2, %eax
	movl	%eax, %edi
	vpextrd	$3, %xmm0, %eax
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovs	%ecx, %eax
	sarl	$2, %eax
	vmovd	%edi, %xmm2
	vpinsrd	$1, %eax, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	vmovd	%esi, %xmm4
	vpinsrd	$1, %edx, %xmm4, %xmm3
	vmovq	%xmm3, %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vpunpcklqdq	%xmm6, %xmm5, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
sr4444:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vmovd	%xmm0, %eax
	cltd
	shrl	$30, %edx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	movl	%eax, %esi
	vpextrd	$1, %xmm0, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%eax, %edx
	andl	$3, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %ecx
	vpextrd	$2, %xmm0, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%eax, %edx
	andl	$3, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edi
	vpextrd	$3, %xmm0, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%eax, %edx
	andl	$3, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	vmovd	%edi, %xmm2
	vpinsrd	$1, %eax, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	vmovd	%esi, %xmm4
	vpinsrd	$1, %ecx, %xmm4, %xmm3
	vmovq	%xmm3, %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vpunpcklqdq	%xmm6, %xmm5, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
uq1428:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vmovd	%xmm0, %edx
	vpextrd	$1, %xmm0, %eax
	shrl	$2, %eax
	movl	%eax, %ecx
	vpextrd	$2, %xmm0, %eax
	shrl	%eax
	movl	%eax, %esi
	vpextrd	$3, %xmm0, %eax
	shrl	$3, %eax
	vmovd	%esi, %xmm2
	vpinsrd	$1, %eax, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	vmovd	%edx, %xmm4
	vpinsrd	$1, %ecx, %xmm4, %xmm3
	vmovq	%xmm3, %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vpunpcklqdq	%xmm6, %xmm5, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
ur1428:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vpextrd	$1, %xmm0, %eax
	andl	$3, %eax
	movl	%eax, %edx
	vpextrd	$2, %xmm0, %eax
	andl	$1, %eax
	movl	%eax, %ecx
	vpextrd	$3, %xmm0, %eax
	andl	$7, %eax
	vmovd	%ecx, %xmm2
	vpinsrd	$1, %eax, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movl	$0, %ecx
	vmovd	%ecx, %xmm4
	vpinsrd	$1, %edx, %xmm4, %xmm3
	vmovq	%xmm3, %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vpunpcklqdq	%xmm6, %xmm5, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
sq1428:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vmovd	%xmm0, %edx
	vpextrd	$1, %xmm0, %eax
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovs	%ecx, %eax
	sarl	$2, %eax
	movl	%eax, %ecx
	vpextrd	$2, %xmm0, %eax
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%esi, %eax
	sarl	%eax
	movl	%eax, %edi
	vpextrd	$3, %xmm0, %eax
	leal	7(%rax), %esi
	testl	%eax, %eax
	cmovs	%esi, %eax
	sarl	$3, %eax
	vmovd	%edi, %xmm2
	vpinsrd	$1, %eax, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	vmovd	%edx, %xmm4
	vpinsrd	$1, %ecx, %xmm4, %xmm3
	vmovq	%xmm3, %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vpunpcklqdq	%xmm6, %xmm5, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
sr1428:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vpextrd	$1, %xmm0, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%eax, %edx
	andl	$3, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %ecx
	vpextrd	$2, %xmm0, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$31, %eax
	addl	%eax, %edx
	andl	$1, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %esi
	vpextrd	$3, %xmm0, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%eax, %edx
	andl	$7, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	vmovd	%esi, %xmm2
	vpinsrd	$1, %eax, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movl	$0, %edx
	vmovd	%edx, %xmm4
	vpinsrd	$1, %ecx, %xmm4, %xmm3
	vmovq	%xmm3, %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vpunpcklqdq	%xmm6, %xmm5, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
uq3333:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vmovd	%xmm0, %eax
	movl	$-1431655765, %edx
	mull	%edx
	movl	%edx, %esi
	shrl	%esi
	vpextrd	$1, %xmm0, %eax
	movl	$-1431655765, %edx
	mull	%edx
	movl	%edx, %ecx
	shrl	%ecx
	vpextrd	$2, %xmm0, %eax
	movl	$-1431655765, %edx
	mull	%edx
	movl	%edx, %edi
	shrl	%edi
	vpextrd	$3, %xmm0, %eax
	movl	$-1431655765, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	%eax
	vmovd	%edi, %xmm2
	vpinsrd	$1, %eax, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	vmovd	%esi, %xmm4
	vpinsrd	$1, %ecx, %xmm4, %xmm3
	vmovq	%xmm3, %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vpunpcklqdq	%xmm6, %xmm5, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
ur3333:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vmovd	%xmm0, %ecx
	movl	$-1431655765, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %esi
	shrl	%esi
	movl	%esi, %eax
	addl	%eax, %eax
	addl	%esi, %eax
	subl	%eax, %ecx
	movl	%ecx, %esi
	vpextrd	$1, %xmm0, %edi
	movl	$-1431655765, %edx
	movl	%edi, %eax
	mull	%edx
	movl	%edx, %ecx
	shrl	%ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	subl	%eax, %edi
	movl	%edi, %ecx
	vpextrd	$2, %xmm0, %r8d
	movl	$-1431655765, %edx
	movl	%r8d, %eax
	mull	%edx
	movl	%edx, %edi
	shrl	%edi
	movl	%edi, %eax
	addl	%eax, %eax
	addl	%edi, %eax
	movl	%r8d, %edi
	subl	%eax, %edi
	vpextrd	$3, %xmm0, %r8d
	movl	$-1431655765, %edx
	movl	%r8d, %eax
	mull	%edx
	shrl	%edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%r8d, %edx
	subl	%eax, %edx
	vmovd	%edi, %xmm2
	vpinsrd	$1, %edx, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	vmovd	%esi, %xmm4
	vpinsrd	$1, %ecx, %xmm4, %xmm3
	vmovq	%xmm3, %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vpunpcklqdq	%xmm6, %xmm5, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
sq3333:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vmovd	%xmm0, %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %edi
	subl	%eax, %edi
	vpextrd	$1, %xmm0, %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	vpextrd	$2, %xmm0, %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %r8d
	vpextrd	$3, %xmm0, %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	vmovd	%r8d, %xmm2
	vpinsrd	$1, %eax, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	vmovd	%edi, %xmm4
	vpinsrd	$1, %esi, %xmm4, %xmm3
	vmovq	%xmm3, %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vpunpcklqdq	%xmm6, %xmm5, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
sr3333:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vmovd	%xmm0, %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	addl	%eax, %eax
	addl	%esi, %eax
	subl	%eax, %ecx
	movl	%ecx, %esi
	vpextrd	$1, %xmm0, %edi
	movl	$1431655766, %edx
	movl	%edi, %eax
	imull	%edx
	movl	%edi, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	subl	%eax, %edi
	movl	%edi, %ecx
	vpextrd	$2, %xmm0, %r8d
	movl	$1431655766, %edx
	movl	%r8d, %eax
	imull	%edx
	movl	%r8d, %eax
	sarl	$31, %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	addl	%eax, %eax
	addl	%edi, %eax
	movl	%r8d, %edi
	subl	%eax, %edi
	vpextrd	$3, %xmm0, %r8d
	movl	$1431655766, %edx
	movl	%r8d, %eax
	imull	%edx
	movl	%r8d, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%r8d, %edx
	subl	%eax, %edx
	vmovd	%edi, %xmm2
	vpinsrd	$1, %edx, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	vmovd	%esi, %xmm4
	vpinsrd	$1, %ecx, %xmm4, %xmm3
	vmovq	%xmm3, %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vpunpcklqdq	%xmm6, %xmm5, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
uq6565:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vmovd	%xmm0, %eax
	movl	$-1431655765, %edx
	mull	%edx
	movl	%edx, %esi
	shrl	$2, %esi
	vpextrd	$1, %xmm0, %eax
	movl	$-858993459, %edx
	mull	%edx
	movl	%edx, %ecx
	shrl	$2, %ecx
	vpextrd	$2, %xmm0, %eax
	movl	$-1431655765, %edx
	mull	%edx
	movl	%edx, %edi
	shrl	$2, %edi
	vpextrd	$3, %xmm0, %eax
	movl	$-858993459, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$2, %eax
	vmovd	%edi, %xmm2
	vpinsrd	$1, %eax, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	vmovd	%esi, %xmm4
	vpinsrd	$1, %ecx, %xmm4, %xmm3
	vmovq	%xmm3, %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vpunpcklqdq	%xmm6, %xmm5, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
ur6565:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vmovd	%xmm0, %ecx
	movl	$-1431655765, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %esi
	shrl	$2, %esi
	movl	%esi, %eax
	addl	%eax, %eax
	addl	%esi, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %esi
	vpextrd	$1, %xmm0, %edi
	movl	$-858993459, %edx
	movl	%edi, %eax
	mull	%edx
	movl	%edx, %ecx
	shrl	$2, %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	subl	%eax, %edi
	movl	%edi, %ecx
	vpextrd	$2, %xmm0, %r8d
	movl	$-1431655765, %edx
	movl	%r8d, %eax
	mull	%edx
	movl	%edx, %edi
	shrl	$2, %edi
	movl	%edi, %eax
	addl	%eax, %eax
	addl	%edi, %eax
	addl	%eax, %eax
	movl	%r8d, %edi
	subl	%eax, %edi
	vpextrd	$3, %xmm0, %r8d
	movl	$-858993459, %edx
	movl	%r8d, %eax
	mull	%edx
	shrl	$2, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	%r8d, %edx
	subl	%eax, %edx
	vmovd	%edi, %xmm2
	vpinsrd	$1, %edx, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	vmovd	%esi, %xmm4
	vpinsrd	$1, %ecx, %xmm4, %xmm3
	vmovq	%xmm3, %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vpunpcklqdq	%xmm6, %xmm5, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
sq6565:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vmovd	%xmm0, %ecx
	movl	$715827883, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %edi
	subl	%eax, %edi
	vpextrd	$1, %xmm0, %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	vpextrd	$2, %xmm0, %ecx
	movl	$715827883, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %r8d
	vpextrd	$3, %xmm0, %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	vmovd	%r8d, %xmm2
	vpinsrd	$1, %eax, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	vmovd	%edi, %xmm4
	vpinsrd	$1, %esi, %xmm4, %xmm3
	vmovq	%xmm3, %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vpunpcklqdq	%xmm6, %xmm5, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
sr6565:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vmovd	%xmm0, %ecx
	movl	$715827883, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	addl	%eax, %eax
	addl	%esi, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %esi
	vpextrd	$1, %xmm0, %edi
	movl	$1717986919, %edx
	movl	%edi, %eax
	imull	%edx
	sarl	%edx
	movl	%edi, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	subl	%eax, %edi
	movl	%edi, %ecx
	vpextrd	$2, %xmm0, %r8d
	movl	$715827883, %edx
	movl	%r8d, %eax
	imull	%edx
	movl	%r8d, %eax
	sarl	$31, %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	addl	%eax, %eax
	addl	%edi, %eax
	addl	%eax, %eax
	movl	%r8d, %edi
	subl	%eax, %edi
	vpextrd	$3, %xmm0, %r8d
	movl	$1717986919, %edx
	movl	%r8d, %eax
	imull	%edx
	sarl	%edx
	movl	%r8d, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	%r8d, %edx
	subl	%eax, %edx
	vmovd	%edi, %xmm2
	vpinsrd	$1, %edx, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	vmovd	%esi, %xmm4
	vpinsrd	$1, %ecx, %xmm4, %xmm3
	vmovq	%xmm3, %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vpunpcklqdq	%xmm6, %xmm5, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
uq1414146:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vmovd	%xmm0, %eax
	shrl	%eax
	movl	$-1840700269, %edx
	mull	%edx
	movl	%edx, %esi
	shrl	$2, %esi
	vpextrd	$1, %xmm0, %eax
	shrl	%eax
	movl	$-1840700269, %edx
	mull	%edx
	movl	%edx, %ecx
	shrl	$2, %ecx
	vpextrd	$2, %xmm0, %eax
	shrl	%eax
	movl	$-1840700269, %edx
	mull	%edx
	movl	%edx, %edi
	shrl	$2, %edi
	vpextrd	$3, %xmm0, %eax
	movl	$-1431655765, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$2, %eax
	vmovd	%edi, %xmm2
	vpinsrd	$1, %eax, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	vmovd	%esi, %xmm4
	vpinsrd	$1, %ecx, %xmm4, %xmm3
	vmovq	%xmm3, %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vpunpcklqdq	%xmm6, %xmm5, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
ur1414146:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vmovd	%xmm0, %ecx
	movl	%ecx, %eax
	shrl	%eax
	movl	$-1840700269, %edx
	mull	%edx
	movl	%edx, %esi
	shrl	$2, %esi
	movl	%esi, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	subl	%edx, %ecx
	movl	%ecx, %esi
	vpextrd	$1, %xmm0, %edi
	movl	%edi, %eax
	shrl	%eax
	movl	$-1840700269, %edx
	mull	%edx
	movl	%edx, %ecx
	shrl	$2, %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	subl	%edx, %edi
	movl	%edi, %ecx
	vpextrd	$2, %xmm0, %r8d
	movl	%r8d, %eax
	shrl	%eax
	movl	$-1840700269, %edx
	mull	%edx
	movl	%edx, %edi
	shrl	$2, %edi
	movl	%edi, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	movl	%r8d, %edi
	subl	%edx, %edi
	vpextrd	$3, %xmm0, %r8d
	movl	$-1431655765, %edx
	movl	%r8d, %eax
	mull	%edx
	shrl	$2, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%r8d, %edx
	subl	%eax, %edx
	vmovd	%edi, %xmm2
	vpinsrd	$1, %edx, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	vmovd	%esi, %xmm4
	vpinsrd	$1, %ecx, %xmm4, %xmm3
	vmovq	%xmm3, %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vpunpcklqdq	%xmm6, %xmm5, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
sq1414146:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vmovd	%xmm0, %ecx
	movl	$-1840700269, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %edi
	subl	%eax, %edi
	vpextrd	$1, %xmm0, %ecx
	movl	$-1840700269, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	vpextrd	$2, %xmm0, %ecx
	movl	$-1840700269, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %r8d
	vpextrd	$3, %xmm0, %ecx
	movl	$715827883, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	vmovd	%r8d, %xmm2
	vpinsrd	$1, %eax, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	vmovd	%edi, %xmm4
	vpinsrd	$1, %esi, %xmm4, %xmm3
	vmovq	%xmm3, %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vpunpcklqdq	%xmm6, %xmm5, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
sr1414146:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vmovd	%xmm0, %ecx
	movl	$-1840700269, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	movl	%ecx, %edi
	subl	%edx, %edi
	vpextrd	$1, %xmm0, %ecx
	movl	$-1840700269, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	movl	%ecx, %esi
	subl	%edx, %esi
	vpextrd	$2, %xmm0, %ecx
	movl	$-1840700269, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %r8d
	movl	%r8d, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	subl	%edx, %ecx
	movl	%ecx, %r8d
	vpextrd	$3, %xmm0, %ecx
	movl	$715827883, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	vmovd	%r8d, %xmm2
	vpinsrd	$1, %edx, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	vmovd	%edi, %xmm4
	vpinsrd	$1, %esi, %xmm4, %xmm3
	vmovq	%xmm3, %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vpunpcklqdq	%xmm6, %xmm5, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
uq7777:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vmovd	%xmm0, %ecx
	movl	$613566757, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$2, %eax
	movl	%eax, %edi
	vpextrd	$1, %xmm0, %ecx
	movl	$613566757, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$2, %eax
	movl	%eax, %esi
	vpextrd	$2, %xmm0, %ecx
	movl	$613566757, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$2, %eax
	movl	%eax, %r8d
	vpextrd	$3, %xmm0, %ecx
	movl	$613566757, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$2, %eax
	vmovd	%r8d, %xmm2
	vpinsrd	$1, %eax, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	vmovd	%edi, %xmm4
	vpinsrd	$1, %esi, %xmm4, %xmm3
	vmovq	%xmm3, %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vpunpcklqdq	%xmm6, %xmm5, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
ur7777:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vmovd	%xmm0, %ecx
	movl	$613566757, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$2, %eax
	movl	%eax, %esi
	movl	%esi, %eax
	sall	$3, %eax
	subl	%esi, %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	vpextrd	$1, %xmm0, %edi
	movl	$613566757, %edx
	movl	%edi, %eax
	mull	%edx
	movl	%edi, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$2, %eax
	movl	%eax, %ecx
	movl	%ecx, %eax
	sall	$3, %eax
	subl	%ecx, %eax
	movl	%edi, %ecx
	subl	%eax, %ecx
	vpextrd	$2, %xmm0, %r8d
	movl	$613566757, %edx
	movl	%r8d, %eax
	mull	%edx
	movl	%r8d, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$2, %eax
	movl	%eax, %edi
	movl	%edi, %eax
	sall	$3, %eax
	subl	%edi, %eax
	movl	%r8d, %edi
	subl	%eax, %edi
	vpextrd	$3, %xmm0, %r8d
	movl	$613566757, %edx
	movl	%r8d, %eax
	mull	%edx
	movl	%r8d, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$2, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	movl	%r8d, %edx
	subl	%eax, %edx
	vmovd	%edi, %xmm2
	vpinsrd	$1, %edx, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	vmovd	%esi, %xmm4
	vpinsrd	$1, %ecx, %xmm4, %xmm3
	vmovq	%xmm3, %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vpunpcklqdq	%xmm6, %xmm5, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
sq7777:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vmovd	%xmm0, %ecx
	movl	$-1840700269, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %edi
	subl	%eax, %edi
	vpextrd	$1, %xmm0, %ecx
	movl	$-1840700269, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	vpextrd	$2, %xmm0, %ecx
	movl	$-1840700269, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %r8d
	vpextrd	$3, %xmm0, %ecx
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
	vmovd	%r8d, %xmm2
	vpinsrd	$1, %eax, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	vmovd	%edi, %xmm4
	vpinsrd	$1, %esi, %xmm4, %xmm3
	vmovq	%xmm3, %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vpunpcklqdq	%xmm6, %xmm5, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
sr7777:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vmovd	%xmm0, %ecx
	movl	$-1840700269, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	sall	$3, %eax
	subl	%edi, %eax
	movl	%ecx, %edi
	subl	%eax, %edi
	vpextrd	$1, %xmm0, %esi
	movl	$-1840700269, %edx
	movl	%esi, %eax
	imull	%edx
	leal	(%rdx,%rsi), %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	%esi, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$3, %eax
	subl	%ecx, %eax
	movl	%esi, %ecx
	subl	%eax, %ecx
	vpextrd	$2, %xmm0, %esi
	movl	$-1840700269, %edx
	movl	%esi, %eax
	imull	%edx
	leal	(%rdx,%rsi), %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	%esi, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %r8d
	movl	%r8d, %eax
	sall	$3, %eax
	subl	%r8d, %eax
	subl	%eax, %esi
	movl	%esi, %r8d
	vpextrd	$3, %xmm0, %esi
	movl	$-1840700269, %edx
	movl	%esi, %eax
	imull	%edx
	leal	(%rdx,%rsi), %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	%esi, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %esi
	movl	%esi, %edx
	vmovd	%r8d, %xmm2
	vpinsrd	$1, %edx, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	vmovd	%edi, %xmm4
	vpinsrd	$1, %ecx, %xmm4, %xmm3
	vmovq	%xmm3, %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vpunpcklqdq	%xmm6, %xmm5, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
u:
	.long	73
	.long	65531
	.long	0
	.long	174
	.long	1
	.long	8173
	.long	-1
	.long	-64
s:
	.long	73
	.long	-9123
	.long	32761
	.long	8191
	.long	9903
	.long	-1
	.long	-7323
	.long	0
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	jmp	L64
L113:
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	u(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uq4444
	movl	-32(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movl	(%rdx), %edx
	shrl	$2, %edx
	cmpl	%edx, %eax
	jne	L65
	movl	-20(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movl	12(%rdx), %edx
	shrl	$2, %edx
	cmpl	%edx, %eax
	je	L66
L65:
	call	abort
L66:
	leaq	-32(%rbp), %rax
	movl	-24(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movl	8(%rdx), %edx
	shrl	$2, %edx
	cmpl	%edx, %eax
	jne	L67
	movl	-28(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movl	4(%rdx), %edx
	shrl	$2, %edx
	cmpl	%edx, %eax
	je	L68
L67:
	call	abort
L68:
	leaq	-32(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	u(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ur4444
	movl	-32(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movl	(%rdx), %edx
	andl	$3, %edx
	cmpl	%edx, %eax
	jne	L69
	movl	-20(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movl	12(%rdx), %edx
	andl	$3, %edx
	cmpl	%edx, %eax
	je	L70
L69:
	call	abort
L70:
	leaq	-32(%rbp), %rax
	movl	-24(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movl	8(%rdx), %edx
	andl	$3, %edx
	cmpl	%edx, %eax
	jne	L71
	movl	-28(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movl	4(%rdx), %edx
	andl	$3, %edx
	cmpl	%edx, %eax
	je	L72
L71:
	call	abort
L72:
	leaq	-32(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	u(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uq1428
	movl	-32(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L73
	movl	-20(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movl	12(%rdx), %edx
	shrl	$3, %edx
	cmpl	%edx, %eax
	je	L74
L73:
	call	abort
L74:
	leaq	-32(%rbp), %rax
	movl	-24(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movl	8(%rdx), %edx
	shrl	%edx
	cmpl	%edx, %eax
	jne	L75
	movl	-28(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movl	4(%rdx), %edx
	shrl	$2, %edx
	cmpl	%edx, %eax
	je	L76
L75:
	call	abort
L76:
	leaq	-32(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	u(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ur1428
	movl	-32(%rbp), %eax
	testl	%eax, %eax
	jne	L77
	movl	-20(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movl	12(%rdx), %edx
	andl	$7, %edx
	cmpl	%edx, %eax
	je	L78
L77:
	call	abort
L78:
	leaq	-32(%rbp), %rax
	movl	-24(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movl	8(%rdx), %edx
	andl	$1, %edx
	cmpl	%edx, %eax
	jne	L79
	movl	-28(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movl	4(%rdx), %edx
	andl	$3, %edx
	cmpl	%edx, %eax
	je	L80
L79:
	call	abort
L80:
	leaq	-32(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	u(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uq3333
	movl	-32(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	(%rax), %eax
	movl	$-1431655765, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	%eax
	cmpl	%eax, %ecx
	jne	L81
	movl	-20(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	12(%rax), %eax
	movl	$-1431655765, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	%eax
	cmpl	%eax, %ecx
	je	L82
L81:
	call	abort
L82:
	leaq	-32(%rbp), %rax
	movl	-24(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	8(%rax), %eax
	movl	$-1431655765, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	%eax
	cmpl	%eax, %ecx
	jne	L83
	movl	-28(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	4(%rax), %eax
	movl	$-1431655765, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	%eax
	cmpl	%eax, %ecx
	je	L84
L83:
	call	abort
L84:
	leaq	-32(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	u(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ur3333
	movl	-32(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	(%rax), %ecx
	movl	$-1431655765, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	%edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	jne	L85
	movl	-20(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	12(%rax), %ecx
	movl	$-1431655765, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	%edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	je	L86
L85:
	call	abort
L86:
	leaq	-32(%rbp), %rax
	movl	-24(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	8(%rax), %ecx
	movl	$-1431655765, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	%edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	jne	L87
	movl	-28(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	4(%rax), %ecx
	movl	$-1431655765, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	%edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	je	L88
L87:
	call	abort
L88:
	leaq	-32(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	u(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uq6565
	movl	-32(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	(%rax), %eax
	movl	$-1431655765, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$2, %eax
	cmpl	%eax, %ecx
	jne	L89
	movl	-20(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	12(%rax), %eax
	movl	$-858993459, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$2, %eax
	cmpl	%eax, %ecx
	je	L90
L89:
	call	abort
L90:
	leaq	-32(%rbp), %rax
	movl	-24(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	8(%rax), %eax
	movl	$-1431655765, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$2, %eax
	cmpl	%eax, %ecx
	jne	L91
	movl	-28(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	4(%rax), %eax
	movl	$-858993459, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$2, %eax
	cmpl	%eax, %ecx
	je	L92
L91:
	call	abort
L92:
	leaq	-32(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	u(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ur6565
	movl	-32(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	(%rax), %ecx
	movl	$-1431655765, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$2, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	jne	L93
	movl	-20(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	12(%rax), %ecx
	movl	$-858993459, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$2, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	je	L94
L93:
	call	abort
L94:
	leaq	-32(%rbp), %rax
	movl	-24(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	8(%rax), %ecx
	movl	$-1431655765, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$2, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	jne	L95
	movl	-28(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	4(%rax), %ecx
	movl	$-858993459, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$2, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	je	L96
L95:
	call	abort
L96:
	leaq	-32(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	u(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uq1414146
	movl	-32(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	(%rax), %eax
	shrl	%eax
	movl	$-1840700269, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$2, %eax
	cmpl	%eax, %ecx
	jne	L97
	movl	-20(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	12(%rax), %eax
	movl	$-1431655765, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$2, %eax
	cmpl	%eax, %ecx
	je	L98
L97:
	call	abort
L98:
	leaq	-32(%rbp), %rax
	movl	-24(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	8(%rax), %eax
	shrl	%eax
	movl	$-1840700269, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$2, %eax
	cmpl	%eax, %ecx
	jne	L99
	movl	-28(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	4(%rax), %eax
	shrl	%eax
	movl	$-1840700269, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$2, %eax
	cmpl	%eax, %ecx
	je	L100
L99:
	call	abort
L100:
	leaq	-32(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	u(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ur1414146
	movl	-32(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	(%rax), %ecx
	movl	%ecx, %eax
	shrl	%eax
	movl	$-1840700269, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$2, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	cmpl	%eax, %esi
	jne	L101
	movl	-20(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	12(%rax), %ecx
	movl	$-1431655765, %edx
	movl	%ecx, %eax
	mull	%edx
	shrl	$2, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	je	L102
L101:
	call	abort
L102:
	leaq	-32(%rbp), %rax
	movl	-24(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	shrl	%eax
	movl	$-1840700269, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$2, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	cmpl	%eax, %esi
	jne	L103
	movl	-28(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	4(%rax), %ecx
	movl	%ecx, %eax
	shrl	%eax
	movl	$-1840700269, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$2, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	cmpl	%eax, %esi
	je	L104
L103:
	call	abort
L104:
	leaq	-32(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	u(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uq7777
	movl	-32(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	(%rax), %ecx
	movl	$613566757, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$2, %eax
	cmpl	%eax, %esi
	jne	L105
	movl	-20(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	12(%rax), %ecx
	movl	$613566757, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$2, %eax
	cmpl	%eax, %esi
	je	L106
L105:
	call	abort
L106:
	leaq	-32(%rbp), %rax
	movl	-24(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	8(%rax), %ecx
	movl	$613566757, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$2, %eax
	cmpl	%eax, %esi
	jne	L107
	movl	-28(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	4(%rax), %ecx
	movl	$613566757, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$2, %eax
	cmpl	%eax, %esi
	je	L108
L107:
	call	abort
L108:
	leaq	-32(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	u(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ur7777
	movl	-32(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	(%rax), %ecx
	movl	$613566757, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$2, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	jne	L109
	movl	-20(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	12(%rax), %ecx
	movl	$613566757, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$2, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	je	L110
L109:
	call	abort
L110:
	leaq	-32(%rbp), %rax
	movl	-24(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	8(%rax), %ecx
	movl	$613566757, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$2, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	jne	L111
	movl	-28(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movl	4(%rax), %ecx
	movl	$613566757, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$2, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	je	L112
L111:
	call	abort
L112:
	leaq	-32(%rbp), %rax
	addl	$1, -4(%rbp)
L64:
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	jbe	L113
	movl	$0, -4(%rbp)
	jmp	L114
L163:
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	s(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sq4444
	movl	-48(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	(%rax), %eax
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovs	%ecx, %eax
	sarl	$2, %eax
	cmpl	%eax, %edx
	jne	L115
	movl	-36(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	12(%rax), %eax
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovs	%ecx, %eax
	sarl	$2, %eax
	cmpl	%eax, %edx
	je	L116
L115:
	call	abort
L116:
	leaq	-48(%rbp), %rax
	movl	-40(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	8(%rax), %eax
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovs	%ecx, %eax
	sarl	$2, %eax
	cmpl	%eax, %edx
	jne	L117
	movl	-44(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	4(%rax), %eax
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovs	%ecx, %eax
	sarl	$2, %eax
	cmpl	%eax, %edx
	je	L118
L117:
	call	abort
L118:
	leaq	-48(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	s(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sr4444
	movl	-48(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	(%rax), %eax
	cltd
	shrl	$30, %edx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jne	L119
	movl	-36(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	12(%rax), %eax
	cltd
	shrl	$30, %edx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	cmpl	%eax, %ecx
	je	L120
L119:
	call	abort
L120:
	leaq	-48(%rbp), %rax
	movl	-40(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	8(%rax), %eax
	cltd
	shrl	$30, %edx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jne	L121
	movl	-44(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	4(%rax), %eax
	cltd
	shrl	$30, %edx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	cmpl	%eax, %ecx
	je	L122
L121:
	call	abort
L122:
	leaq	-48(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	s(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sq1428
	movl	-48(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	L123
	movl	-36(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	12(%rax), %eax
	leal	7(%rax), %ecx
	testl	%eax, %eax
	cmovs	%ecx, %eax
	sarl	$3, %eax
	cmpl	%eax, %edx
	je	L124
L123:
	call	abort
L124:
	leaq	-48(%rbp), %rax
	movl	-40(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	8(%rax), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	sarl	%eax
	cmpl	%eax, %edx
	jne	L125
	movl	-44(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	4(%rax), %eax
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovs	%ecx, %eax
	sarl	$2, %eax
	cmpl	%eax, %edx
	je	L126
L125:
	call	abort
L126:
	leaq	-48(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	s(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sr1428
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	jne	L127
	movl	-36(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	12(%rax), %eax
	cltd
	shrl	$29, %edx
	addl	%edx, %eax
	andl	$7, %eax
	subl	%edx, %eax
	cmpl	%eax, %ecx
	je	L128
L127:
	call	abort
L128:
	leaq	-48(%rbp), %rax
	movl	-40(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	8(%rax), %eax
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jne	L129
	movl	-44(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	4(%rax), %eax
	cltd
	shrl	$30, %edx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	cmpl	%eax, %ecx
	je	L130
L129:
	call	abort
L130:
	leaq	-48(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	s(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sq3333
	movl	-48(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	(%rax), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %esi
	jne	L131
	movl	-36(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	12(%rax), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %esi
	je	L132
L131:
	call	abort
L132:
	leaq	-48(%rbp), %rax
	movl	-40(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	8(%rax), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %esi
	jne	L133
	movl	-44(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	4(%rax), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %esi
	je	L134
L133:
	call	abort
L134:
	leaq	-48(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	s(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sr3333
	movl	-48(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	(%rax), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	jne	L135
	movl	-36(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	12(%rax), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	je	L136
L135:
	call	abort
L136:
	leaq	-48(%rbp), %rax
	movl	-40(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	8(%rax), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	jne	L137
	movl	-44(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	4(%rax), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	je	L138
L137:
	call	abort
L138:
	leaq	-48(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	s(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sq6565
	movl	-48(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	(%rax), %ecx
	movl	$715827883, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %esi
	jne	L139
	movl	-36(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	12(%rax), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %esi
	je	L140
L139:
	call	abort
L140:
	leaq	-48(%rbp), %rax
	movl	-40(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	8(%rax), %ecx
	movl	$715827883, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %esi
	jne	L141
	movl	-44(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	4(%rax), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %esi
	je	L142
L141:
	call	abort
L142:
	leaq	-48(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	s(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sr6565
	movl	-48(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	(%rax), %ecx
	movl	$715827883, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	jne	L143
	movl	-36(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	12(%rax), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	je	L144
L143:
	call	abort
L144:
	leaq	-48(%rbp), %rax
	movl	-40(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	8(%rax), %ecx
	movl	$715827883, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	jne	L145
	movl	-44(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	4(%rax), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	je	L146
L145:
	call	abort
L146:
	leaq	-48(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	s(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sq1414146
	movl	-48(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	(%rax), %ecx
	movl	$-1840700269, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %esi
	jne	L147
	movl	-36(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	12(%rax), %ecx
	movl	$715827883, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %esi
	je	L148
L147:
	call	abort
L148:
	leaq	-48(%rbp), %rax
	movl	-40(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	8(%rax), %ecx
	movl	$-1840700269, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %esi
	jne	L149
	movl	-44(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	4(%rax), %ecx
	movl	$-1840700269, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	cmpl	%eax, %esi
	je	L150
L149:
	call	abort
L150:
	leaq	-48(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	s(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sr1414146
	movl	-48(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	(%rax), %ecx
	movl	$-1840700269, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	cmpl	%eax, %esi
	jne	L151
	movl	-36(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	12(%rax), %ecx
	movl	$715827883, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	je	L152
L151:
	call	abort
L152:
	leaq	-48(%rbp), %rax
	movl	-40(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	8(%rax), %ecx
	movl	$-1840700269, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	cmpl	%eax, %esi
	jne	L153
	movl	-44(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	4(%rax), %ecx
	movl	$-1840700269, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$3, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	cmpl	%eax, %esi
	je	L154
L153:
	call	abort
L154:
	leaq	-48(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	s(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sq7777
	movl	-48(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	(%rax), %ecx
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
	jne	L155
	movl	-36(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	12(%rax), %ecx
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
	je	L156
L155:
	call	abort
L156:
	leaq	-48(%rbp), %rax
	movl	-40(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	8(%rax), %ecx
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
	jne	L157
	movl	-44(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	4(%rax), %ecx
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
	je	L158
L157:
	call	abort
L158:
	leaq	-48(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	s(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sr7777
	movl	-48(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	(%rax), %ecx
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
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	jne	L159
	movl	-36(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	12(%rax), %ecx
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
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	je	L160
L159:
	call	abort
L160:
	leaq	-48(%rbp), %rax
	movl	-40(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	8(%rax), %ecx
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
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	jne	L161
	movl	-44(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movl	4(%rax), %ecx
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
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %esi
	je	L162
L161:
	call	abort
L162:
	leaq	-48(%rbp), %rax
	addl	$1, -4(%rbp)
L114:
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	jbe	L163
	movl	$0, %eax
	leave
	ret
