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
ashift_qi_0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	popq	%rbp
	ret
ashift_qi_1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	addl	%eax, %eax
	popq	%rbp
	ret
ashift_qi_2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	sall	$2, %eax
	popq	%rbp
	ret
ashift_qi_3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	sall	$3, %eax
	popq	%rbp
	ret
ashift_qi_4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	sall	$4, %eax
	popq	%rbp
	ret
ashift_qi_5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	sall	$5, %eax
	popq	%rbp
	ret
ashift_qi_6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	sall	$6, %eax
	popq	%rbp
	ret
ashift_qi_7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	sall	$7, %eax
	popq	%rbp
	ret
lshiftrt_qi_0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	popq	%rbp
	ret
lshiftrt_qi_1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	shrb	%al
	popq	%rbp
	ret
lshiftrt_qi_2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	shrb	$2, %al
	popq	%rbp
	ret
lshiftrt_qi_3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	shrb	$3, %al
	popq	%rbp
	ret
lshiftrt_qi_4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	shrb	$4, %al
	popq	%rbp
	ret
lshiftrt_qi_5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	shrb	$5, %al
	popq	%rbp
	ret
lshiftrt_qi_6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	shrb	$6, %al
	popq	%rbp
	ret
lshiftrt_qi_7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	shrb	$7, %al
	popq	%rbp
	ret
ashiftrt_qi_0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	popq	%rbp
	ret
ashiftrt_qi_1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	sarb	%al
	popq	%rbp
	ret
ashiftrt_qi_2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	sarb	$2, %al
	popq	%rbp
	ret
ashiftrt_qi_3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	sarb	$3, %al
	popq	%rbp
	ret
ashiftrt_qi_4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	sarb	$4, %al
	popq	%rbp
	ret
ashiftrt_qi_5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	sarb	$5, %al
	popq	%rbp
	ret
ashiftrt_qi_6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	sarb	$6, %al
	popq	%rbp
	ret
ashiftrt_qi_7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movzbl	-4(%rbp), %eax
	sarb	$7, %al
	popq	%rbp
	ret
ashift_hi_0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	popq	%rbp
	ret
ashift_hi_1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	addl	%eax, %eax
	popq	%rbp
	ret
ashift_hi_2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sall	$2, %eax
	popq	%rbp
	ret
ashift_hi_3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sall	$3, %eax
	popq	%rbp
	ret
ashift_hi_4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sall	$4, %eax
	popq	%rbp
	ret
ashift_hi_5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sall	$5, %eax
	popq	%rbp
	ret
ashift_hi_6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sall	$6, %eax
	popq	%rbp
	ret
ashift_hi_7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sall	$7, %eax
	popq	%rbp
	ret
ashift_hi_8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sall	$8, %eax
	popq	%rbp
	ret
ashift_hi_9:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sall	$9, %eax
	popq	%rbp
	ret
ashift_hi_10:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sall	$10, %eax
	popq	%rbp
	ret
ashift_hi_11:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sall	$11, %eax
	popq	%rbp
	ret
ashift_hi_12:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sall	$12, %eax
	popq	%rbp
	ret
ashift_hi_13:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sall	$13, %eax
	popq	%rbp
	ret
ashift_hi_14:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sall	$14, %eax
	popq	%rbp
	ret
ashift_hi_15:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sall	$15, %eax
	popq	%rbp
	ret
lshiftrt_hi_0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	popq	%rbp
	ret
lshiftrt_hi_1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	shrw	%ax
	popq	%rbp
	ret
lshiftrt_hi_2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	shrw	$2, %ax
	popq	%rbp
	ret
lshiftrt_hi_3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	shrw	$3, %ax
	popq	%rbp
	ret
lshiftrt_hi_4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	shrw	$4, %ax
	popq	%rbp
	ret
lshiftrt_hi_5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	shrw	$5, %ax
	popq	%rbp
	ret
lshiftrt_hi_6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	shrw	$6, %ax
	popq	%rbp
	ret
lshiftrt_hi_7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	shrw	$7, %ax
	popq	%rbp
	ret
lshiftrt_hi_8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	shrw	$8, %ax
	popq	%rbp
	ret
lshiftrt_hi_9:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	shrw	$9, %ax
	popq	%rbp
	ret
lshiftrt_hi_10:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	shrw	$10, %ax
	popq	%rbp
	ret
lshiftrt_hi_11:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	shrw	$11, %ax
	popq	%rbp
	ret
lshiftrt_hi_12:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	shrw	$12, %ax
	popq	%rbp
	ret
lshiftrt_hi_13:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	shrw	$13, %ax
	popq	%rbp
	ret
lshiftrt_hi_14:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	shrw	$14, %ax
	popq	%rbp
	ret
lshiftrt_hi_15:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	shrw	$15, %ax
	popq	%rbp
	ret
ashiftrt_hi_0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	popq	%rbp
	ret
ashiftrt_hi_1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sarw	%ax
	popq	%rbp
	ret
ashiftrt_hi_2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sarw	$2, %ax
	popq	%rbp
	ret
ashiftrt_hi_3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sarw	$3, %ax
	popq	%rbp
	ret
ashiftrt_hi_4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sarw	$4, %ax
	popq	%rbp
	ret
ashiftrt_hi_5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sarw	$5, %ax
	popq	%rbp
	ret
ashiftrt_hi_6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sarw	$6, %ax
	popq	%rbp
	ret
ashiftrt_hi_7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sarw	$7, %ax
	popq	%rbp
	ret
ashiftrt_hi_8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sarw	$8, %ax
	popq	%rbp
	ret
ashiftrt_hi_9:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sarw	$9, %ax
	popq	%rbp
	ret
ashiftrt_hi_10:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sarw	$10, %ax
	popq	%rbp
	ret
ashiftrt_hi_11:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sarw	$11, %ax
	popq	%rbp
	ret
ashiftrt_hi_12:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sarw	$12, %ax
	popq	%rbp
	ret
ashiftrt_hi_13:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sarw	$13, %ax
	popq	%rbp
	ret
ashiftrt_hi_14:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sarw	$14, %ax
	popq	%rbp
	ret
ashiftrt_hi_15:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movw	%ax, -4(%rbp)
	movzwl	-4(%rbp), %eax
	sarw	$15, %ax
	popq	%rbp
	ret
ashift_si_0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
ashift_si_1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	addl	%eax, %eax
	popq	%rbp
	ret
ashift_si_2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$2, %eax
	popq	%rbp
	ret
ashift_si_3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$3, %eax
	popq	%rbp
	ret
ashift_si_4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$4, %eax
	popq	%rbp
	ret
ashift_si_5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$5, %eax
	popq	%rbp
	ret
ashift_si_6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$6, %eax
	popq	%rbp
	ret
ashift_si_7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$7, %eax
	popq	%rbp
	ret
ashift_si_8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$8, %eax
	popq	%rbp
	ret
ashift_si_9:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$9, %eax
	popq	%rbp
	ret
ashift_si_10:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$10, %eax
	popq	%rbp
	ret
ashift_si_11:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$11, %eax
	popq	%rbp
	ret
ashift_si_12:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$12, %eax
	popq	%rbp
	ret
ashift_si_13:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$13, %eax
	popq	%rbp
	ret
ashift_si_14:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$14, %eax
	popq	%rbp
	ret
ashift_si_15:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$15, %eax
	popq	%rbp
	ret
ashift_si_16:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$16, %eax
	popq	%rbp
	ret
ashift_si_17:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$17, %eax
	popq	%rbp
	ret
ashift_si_18:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$18, %eax
	popq	%rbp
	ret
ashift_si_19:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$19, %eax
	popq	%rbp
	ret
ashift_si_20:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$20, %eax
	popq	%rbp
	ret
ashift_si_21:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$21, %eax
	popq	%rbp
	ret
ashift_si_22:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$22, %eax
	popq	%rbp
	ret
ashift_si_23:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$23, %eax
	popq	%rbp
	ret
ashift_si_24:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$24, %eax
	popq	%rbp
	ret
ashift_si_25:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$25, %eax
	popq	%rbp
	ret
ashift_si_26:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$26, %eax
	popq	%rbp
	ret
ashift_si_27:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$27, %eax
	popq	%rbp
	ret
ashift_si_28:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$28, %eax
	popq	%rbp
	ret
ashift_si_29:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$29, %eax
	popq	%rbp
	ret
ashift_si_30:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$30, %eax
	popq	%rbp
	ret
ashift_si_31:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sall	$31, %eax
	popq	%rbp
	ret
lshiftrt_si_0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
lshiftrt_si_1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	%eax
	popq	%rbp
	ret
lshiftrt_si_2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$2, %eax
	popq	%rbp
	ret
lshiftrt_si_3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$3, %eax
	popq	%rbp
	ret
lshiftrt_si_4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$4, %eax
	popq	%rbp
	ret
lshiftrt_si_5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$5, %eax
	popq	%rbp
	ret
lshiftrt_si_6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$6, %eax
	popq	%rbp
	ret
lshiftrt_si_7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$7, %eax
	popq	%rbp
	ret
lshiftrt_si_8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$8, %eax
	popq	%rbp
	ret
lshiftrt_si_9:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$9, %eax
	popq	%rbp
	ret
lshiftrt_si_10:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$10, %eax
	popq	%rbp
	ret
lshiftrt_si_11:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$11, %eax
	popq	%rbp
	ret
lshiftrt_si_12:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$12, %eax
	popq	%rbp
	ret
lshiftrt_si_13:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$13, %eax
	popq	%rbp
	ret
lshiftrt_si_14:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$14, %eax
	popq	%rbp
	ret
lshiftrt_si_15:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$15, %eax
	popq	%rbp
	ret
lshiftrt_si_16:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$16, %eax
	popq	%rbp
	ret
lshiftrt_si_17:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$17, %eax
	popq	%rbp
	ret
lshiftrt_si_18:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$18, %eax
	popq	%rbp
	ret
lshiftrt_si_19:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$19, %eax
	popq	%rbp
	ret
lshiftrt_si_20:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$20, %eax
	popq	%rbp
	ret
lshiftrt_si_21:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$21, %eax
	popq	%rbp
	ret
lshiftrt_si_22:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$22, %eax
	popq	%rbp
	ret
lshiftrt_si_23:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$23, %eax
	popq	%rbp
	ret
lshiftrt_si_24:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$24, %eax
	popq	%rbp
	ret
lshiftrt_si_25:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$25, %eax
	popq	%rbp
	ret
lshiftrt_si_26:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$26, %eax
	popq	%rbp
	ret
lshiftrt_si_27:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$27, %eax
	popq	%rbp
	ret
lshiftrt_si_28:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$28, %eax
	popq	%rbp
	ret
lshiftrt_si_29:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$29, %eax
	popq	%rbp
	ret
lshiftrt_si_30:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$30, %eax
	popq	%rbp
	ret
lshiftrt_si_31:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	shrl	$31, %eax
	popq	%rbp
	ret
ashiftrt_si_0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	ret
ashiftrt_si_1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	%eax
	popq	%rbp
	ret
ashiftrt_si_2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$2, %eax
	popq	%rbp
	ret
ashiftrt_si_3:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$3, %eax
	popq	%rbp
	ret
ashiftrt_si_4:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$4, %eax
	popq	%rbp
	ret
ashiftrt_si_5:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$5, %eax
	popq	%rbp
	ret
ashiftrt_si_6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$6, %eax
	popq	%rbp
	ret
ashiftrt_si_7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$7, %eax
	popq	%rbp
	ret
ashiftrt_si_8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$8, %eax
	popq	%rbp
	ret
ashiftrt_si_9:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$9, %eax
	popq	%rbp
	ret
ashiftrt_si_10:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$10, %eax
	popq	%rbp
	ret
ashiftrt_si_11:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$11, %eax
	popq	%rbp
	ret
ashiftrt_si_12:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$12, %eax
	popq	%rbp
	ret
ashiftrt_si_13:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$13, %eax
	popq	%rbp
	ret
ashiftrt_si_14:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$14, %eax
	popq	%rbp
	ret
ashiftrt_si_15:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$15, %eax
	popq	%rbp
	ret
ashiftrt_si_16:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$16, %eax
	popq	%rbp
	ret
ashiftrt_si_17:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$17, %eax
	popq	%rbp
	ret
ashiftrt_si_18:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$18, %eax
	popq	%rbp
	ret
ashiftrt_si_19:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$19, %eax
	popq	%rbp
	ret
ashiftrt_si_20:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$20, %eax
	popq	%rbp
	ret
ashiftrt_si_21:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$21, %eax
	popq	%rbp
	ret
ashiftrt_si_22:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$22, %eax
	popq	%rbp
	ret
ashiftrt_si_23:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$23, %eax
	popq	%rbp
	ret
ashiftrt_si_24:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$24, %eax
	popq	%rbp
	ret
ashiftrt_si_25:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$25, %eax
	popq	%rbp
	ret
ashiftrt_si_26:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$26, %eax
	popq	%rbp
	ret
ashiftrt_si_27:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$27, %eax
	popq	%rbp
	ret
ashiftrt_si_28:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$28, %eax
	popq	%rbp
	ret
ashiftrt_si_29:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$29, %eax
	popq	%rbp
	ret
ashiftrt_si_30:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$30, %eax
	popq	%rbp
	ret
ashiftrt_si_31:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	sarl	$31, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$255, %edi
	call	ashift_qi_0
	cmpb	$-1, %al
	je	L376
	call	abort
L376:
	movl	$255, %edi
	call	ashift_qi_1
	cmpb	$-2, %al
	je	L377
	call	abort
L377:
	movl	$255, %edi
	call	ashift_qi_2
	cmpb	$-4, %al
	je	L378
	call	abort
L378:
	movl	$255, %edi
	call	ashift_qi_3
	cmpb	$-8, %al
	je	L379
	call	abort
L379:
	movl	$255, %edi
	call	ashift_qi_4
	cmpb	$-16, %al
	je	L380
	call	abort
L380:
	movl	$255, %edi
	call	ashift_qi_5
	cmpb	$-32, %al
	je	L381
	call	abort
L381:
	movl	$255, %edi
	call	ashift_qi_6
	cmpb	$-64, %al
	je	L382
	call	abort
L382:
	movl	$255, %edi
	call	ashift_qi_7
	cmpb	$-128, %al
	je	L383
	call	abort
L383:
	movl	$255, %edi
	call	lshiftrt_qi_0
	cmpb	$-1, %al
	je	L384
	call	abort
L384:
	movl	$255, %edi
	call	lshiftrt_qi_1
	cmpb	$127, %al
	je	L385
	call	abort
L385:
	movl	$255, %edi
	call	lshiftrt_qi_2
	cmpb	$63, %al
	je	L386
	call	abort
L386:
	movl	$255, %edi
	call	lshiftrt_qi_3
	cmpb	$31, %al
	je	L387
	call	abort
L387:
	movl	$255, %edi
	call	lshiftrt_qi_4
	cmpb	$15, %al
	je	L388
	call	abort
L388:
	movl	$255, %edi
	call	lshiftrt_qi_5
	cmpb	$7, %al
	je	L389
	call	abort
L389:
	movl	$255, %edi
	call	lshiftrt_qi_6
	cmpb	$3, %al
	je	L390
	call	abort
L390:
	movl	$255, %edi
	call	lshiftrt_qi_7
	cmpb	$1, %al
	je	L391
	call	abort
L391:
	movl	$-1, %edi
	call	ashiftrt_qi_0
	cmpb	$-1, %al
	je	L392
	call	abort
L392:
	movl	$-1, %edi
	call	ashiftrt_qi_1
	cmpb	$-1, %al
	je	L393
	call	abort
L393:
	movl	$-1, %edi
	call	ashiftrt_qi_2
	cmpb	$-1, %al
	je	L394
	call	abort
L394:
	movl	$-1, %edi
	call	ashiftrt_qi_3
	cmpb	$-1, %al
	je	L395
	call	abort
L395:
	movl	$-1, %edi
	call	ashiftrt_qi_4
	cmpb	$-1, %al
	je	L396
	call	abort
L396:
	movl	$-1, %edi
	call	ashiftrt_qi_5
	cmpb	$-1, %al
	je	L397
	call	abort
L397:
	movl	$-1, %edi
	call	ashiftrt_qi_6
	cmpb	$-1, %al
	je	L398
	call	abort
L398:
	movl	$-1, %edi
	call	ashiftrt_qi_7
	cmpb	$-1, %al
	je	L399
	call	abort
L399:
	movl	$0, %edi
	call	ashiftrt_qi_0
	testb	%al, %al
	je	L400
	call	abort
L400:
	movl	$0, %edi
	call	ashiftrt_qi_1
	testb	%al, %al
	je	L401
	call	abort
L401:
	movl	$0, %edi
	call	ashiftrt_qi_2
	testb	%al, %al
	je	L402
	call	abort
L402:
	movl	$0, %edi
	call	ashiftrt_qi_3
	testb	%al, %al
	je	L403
	call	abort
L403:
	movl	$0, %edi
	call	ashiftrt_qi_4
	testb	%al, %al
	je	L404
	call	abort
L404:
	movl	$0, %edi
	call	ashiftrt_qi_5
	testb	%al, %al
	je	L405
	call	abort
L405:
	movl	$0, %edi
	call	ashiftrt_qi_6
	testb	%al, %al
	je	L406
	call	abort
L406:
	movl	$0, %edi
	call	ashiftrt_qi_7
	testb	%al, %al
	je	L407
	call	abort
L407:
	movl	$65535, %edi
	call	ashift_hi_0
	cmpw	$-1, %ax
	je	L408
	call	abort
L408:
	movl	$65535, %edi
	call	ashift_hi_1
	cmpw	$-2, %ax
	je	L409
	call	abort
L409:
	movl	$65535, %edi
	call	ashift_hi_2
	cmpw	$-4, %ax
	je	L410
	call	abort
L410:
	movl	$65535, %edi
	call	ashift_hi_3
	cmpw	$-8, %ax
	je	L411
	call	abort
L411:
	movl	$65535, %edi
	call	ashift_hi_4
	cmpw	$-16, %ax
	je	L412
	call	abort
L412:
	movl	$65535, %edi
	call	ashift_hi_5
	cmpw	$-32, %ax
	je	L413
	call	abort
L413:
	movl	$65535, %edi
	call	ashift_hi_6
	cmpw	$-64, %ax
	je	L414
	call	abort
L414:
	movl	$65535, %edi
	call	ashift_hi_7
	cmpw	$-128, %ax
	je	L415
	call	abort
L415:
	movl	$65535, %edi
	call	ashift_hi_8
	cmpw	$-256, %ax
	je	L416
	call	abort
L416:
	movl	$65535, %edi
	call	ashift_hi_9
	cmpw	$-512, %ax
	je	L417
	call	abort
L417:
	movl	$65535, %edi
	call	ashift_hi_10
	cmpw	$-1024, %ax
	je	L418
	call	abort
L418:
	movl	$65535, %edi
	call	ashift_hi_11
	cmpw	$-2048, %ax
	je	L419
	call	abort
L419:
	movl	$65535, %edi
	call	ashift_hi_12
	cmpw	$-4096, %ax
	je	L420
	call	abort
L420:
	movl	$65535, %edi
	call	ashift_hi_13
	cmpw	$-8192, %ax
	je	L421
	call	abort
L421:
	movl	$65535, %edi
	call	ashift_hi_14
	cmpw	$-16384, %ax
	je	L422
	call	abort
L422:
	movl	$65535, %edi
	call	ashift_hi_15
	cmpw	$-32768, %ax
	je	L423
	call	abort
L423:
	movl	$65535, %edi
	call	lshiftrt_hi_0
	cmpw	$-1, %ax
	je	L424
	call	abort
L424:
	movl	$65535, %edi
	call	lshiftrt_hi_1
	cmpw	$32767, %ax
	je	L425
	call	abort
L425:
	movl	$65535, %edi
	call	lshiftrt_hi_2
	cmpw	$16383, %ax
	je	L426
	call	abort
L426:
	movl	$65535, %edi
	call	lshiftrt_hi_3
	cmpw	$8191, %ax
	je	L427
	call	abort
L427:
	movl	$65535, %edi
	call	lshiftrt_hi_4
	cmpw	$4095, %ax
	je	L428
	call	abort
L428:
	movl	$65535, %edi
	call	lshiftrt_hi_5
	cmpw	$2047, %ax
	je	L429
	call	abort
L429:
	movl	$65535, %edi
	call	lshiftrt_hi_6
	cmpw	$1023, %ax
	je	L430
	call	abort
L430:
	movl	$65535, %edi
	call	lshiftrt_hi_7
	cmpw	$511, %ax
	je	L431
	call	abort
L431:
	movl	$65535, %edi
	call	lshiftrt_hi_8
	cmpw	$255, %ax
	je	L432
	call	abort
L432:
	movl	$65535, %edi
	call	lshiftrt_hi_9
	cmpw	$127, %ax
	je	L433
	call	abort
L433:
	movl	$65535, %edi
	call	lshiftrt_hi_10
	cmpw	$63, %ax
	je	L434
	call	abort
L434:
	movl	$65535, %edi
	call	lshiftrt_hi_11
	cmpw	$31, %ax
	je	L435
	call	abort
L435:
	movl	$65535, %edi
	call	lshiftrt_hi_12
	cmpw	$15, %ax
	je	L436
	call	abort
L436:
	movl	$65535, %edi
	call	lshiftrt_hi_13
	cmpw	$7, %ax
	je	L437
	call	abort
L437:
	movl	$65535, %edi
	call	lshiftrt_hi_14
	cmpw	$3, %ax
	je	L438
	call	abort
L438:
	movl	$65535, %edi
	call	lshiftrt_hi_15
	cmpw	$1, %ax
	je	L439
	call	abort
L439:
	movl	$-1, %edi
	call	ashiftrt_hi_0
	cmpw	$-1, %ax
	je	L440
	call	abort
L440:
	movl	$-1, %edi
	call	ashiftrt_hi_1
	cmpw	$-1, %ax
	je	L441
	call	abort
L441:
	movl	$-1, %edi
	call	ashiftrt_hi_2
	cmpw	$-1, %ax
	je	L442
	call	abort
L442:
	movl	$-1, %edi
	call	ashiftrt_hi_3
	cmpw	$-1, %ax
	je	L443
	call	abort
L443:
	movl	$-1, %edi
	call	ashiftrt_hi_4
	cmpw	$-1, %ax
	je	L444
	call	abort
L444:
	movl	$-1, %edi
	call	ashiftrt_hi_5
	cmpw	$-1, %ax
	je	L445
	call	abort
L445:
	movl	$-1, %edi
	call	ashiftrt_hi_6
	cmpw	$-1, %ax
	je	L446
	call	abort
L446:
	movl	$-1, %edi
	call	ashiftrt_hi_7
	cmpw	$-1, %ax
	je	L447
	call	abort
L447:
	movl	$-1, %edi
	call	ashiftrt_hi_8
	cmpw	$-1, %ax
	je	L448
	call	abort
L448:
	movl	$-1, %edi
	call	ashiftrt_hi_9
	cmpw	$-1, %ax
	je	L449
	call	abort
L449:
	movl	$-1, %edi
	call	ashiftrt_hi_10
	cmpw	$-1, %ax
	je	L450
	call	abort
L450:
	movl	$-1, %edi
	call	ashiftrt_hi_11
	cmpw	$-1, %ax
	je	L451
	call	abort
L451:
	movl	$-1, %edi
	call	ashiftrt_hi_12
	cmpw	$-1, %ax
	je	L452
	call	abort
L452:
	movl	$-1, %edi
	call	ashiftrt_hi_13
	cmpw	$-1, %ax
	je	L453
	call	abort
L453:
	movl	$-1, %edi
	call	ashiftrt_hi_14
	cmpw	$-1, %ax
	je	L454
	call	abort
L454:
	movl	$-1, %edi
	call	ashiftrt_hi_15
	cmpw	$-1, %ax
	je	L455
	call	abort
L455:
	movl	$0, %edi
	call	ashiftrt_hi_0
	testw	%ax, %ax
	je	L456
	call	abort
L456:
	movl	$0, %edi
	call	ashiftrt_hi_1
	testw	%ax, %ax
	je	L457
	call	abort
L457:
	movl	$0, %edi
	call	ashiftrt_hi_2
	testw	%ax, %ax
	je	L458
	call	abort
L458:
	movl	$0, %edi
	call	ashiftrt_hi_3
	testw	%ax, %ax
	je	L459
	call	abort
L459:
	movl	$0, %edi
	call	ashiftrt_hi_4
	testw	%ax, %ax
	je	L460
	call	abort
L460:
	movl	$0, %edi
	call	ashiftrt_hi_5
	testw	%ax, %ax
	je	L461
	call	abort
L461:
	movl	$0, %edi
	call	ashiftrt_hi_6
	testw	%ax, %ax
	je	L462
	call	abort
L462:
	movl	$0, %edi
	call	ashiftrt_hi_7
	testw	%ax, %ax
	je	L463
	call	abort
L463:
	movl	$0, %edi
	call	ashiftrt_hi_8
	testw	%ax, %ax
	je	L464
	call	abort
L464:
	movl	$0, %edi
	call	ashiftrt_hi_9
	testw	%ax, %ax
	je	L465
	call	abort
L465:
	movl	$0, %edi
	call	ashiftrt_hi_10
	testw	%ax, %ax
	je	L466
	call	abort
L466:
	movl	$0, %edi
	call	ashiftrt_hi_11
	testw	%ax, %ax
	je	L467
	call	abort
L467:
	movl	$0, %edi
	call	ashiftrt_hi_12
	testw	%ax, %ax
	je	L468
	call	abort
L468:
	movl	$0, %edi
	call	ashiftrt_hi_13
	testw	%ax, %ax
	je	L469
	call	abort
L469:
	movl	$0, %edi
	call	ashiftrt_hi_14
	testw	%ax, %ax
	je	L470
	call	abort
L470:
	movl	$0, %edi
	call	ashiftrt_hi_15
	testw	%ax, %ax
	je	L471
	call	abort
L471:
	movl	$-1, %edi
	call	ashift_si_0
	cmpl	$-1, %eax
	je	L472
	call	abort
L472:
	movl	$-1, %edi
	call	ashift_si_1
	cmpl	$-2, %eax
	je	L473
	call	abort
L473:
	movl	$-1, %edi
	call	ashift_si_2
	cmpl	$-4, %eax
	je	L474
	call	abort
L474:
	movl	$-1, %edi
	call	ashift_si_3
	cmpl	$-8, %eax
	je	L475
	call	abort
L475:
	movl	$-1, %edi
	call	ashift_si_4
	cmpl	$-16, %eax
	je	L476
	call	abort
L476:
	movl	$-1, %edi
	call	ashift_si_5
	cmpl	$-32, %eax
	je	L477
	call	abort
L477:
	movl	$-1, %edi
	call	ashift_si_6
	cmpl	$-64, %eax
	je	L478
	call	abort
L478:
	movl	$-1, %edi
	call	ashift_si_7
	cmpl	$-128, %eax
	je	L479
	call	abort
L479:
	movl	$-1, %edi
	call	ashift_si_8
	cmpl	$-256, %eax
	je	L480
	call	abort
L480:
	movl	$-1, %edi
	call	ashift_si_9
	cmpl	$-512, %eax
	je	L481
	call	abort
L481:
	movl	$-1, %edi
	call	ashift_si_10
	cmpl	$-1024, %eax
	je	L482
	call	abort
L482:
	movl	$-1, %edi
	call	ashift_si_11
	cmpl	$-2048, %eax
	je	L483
	call	abort
L483:
	movl	$-1, %edi
	call	ashift_si_12
	cmpl	$-4096, %eax
	je	L484
	call	abort
L484:
	movl	$-1, %edi
	call	ashift_si_13
	cmpl	$-8192, %eax
	je	L485
	call	abort
L485:
	movl	$-1, %edi
	call	ashift_si_14
	cmpl	$-16384, %eax
	je	L486
	call	abort
L486:
	movl	$-1, %edi
	call	ashift_si_15
	cmpl	$-32768, %eax
	je	L487
	call	abort
L487:
	movl	$-1, %edi
	call	ashift_si_16
	cmpl	$-65536, %eax
	je	L488
	call	abort
L488:
	movl	$-1, %edi
	call	ashift_si_17
	cmpl	$-131072, %eax
	je	L489
	call	abort
L489:
	movl	$-1, %edi
	call	ashift_si_18
	cmpl	$-262144, %eax
	je	L490
	call	abort
L490:
	movl	$-1, %edi
	call	ashift_si_19
	cmpl	$-524288, %eax
	je	L491
	call	abort
L491:
	movl	$-1, %edi
	call	ashift_si_20
	cmpl	$-1048576, %eax
	je	L492
	call	abort
L492:
	movl	$-1, %edi
	call	ashift_si_21
	cmpl	$-2097152, %eax
	je	L493
	call	abort
L493:
	movl	$-1, %edi
	call	ashift_si_22
	cmpl	$-4194304, %eax
	je	L494
	call	abort
L494:
	movl	$-1, %edi
	call	ashift_si_23
	cmpl	$-8388608, %eax
	je	L495
	call	abort
L495:
	movl	$-1, %edi
	call	ashift_si_24
	cmpl	$-16777216, %eax
	je	L496
	call	abort
L496:
	movl	$-1, %edi
	call	ashift_si_25
	cmpl	$-33554432, %eax
	je	L497
	call	abort
L497:
	movl	$-1, %edi
	call	ashift_si_26
	cmpl	$-67108864, %eax
	je	L498
	call	abort
L498:
	movl	$-1, %edi
	call	ashift_si_27
	cmpl	$-134217728, %eax
	je	L499
	call	abort
L499:
	movl	$-1, %edi
	call	ashift_si_28
	cmpl	$-268435456, %eax
	je	L500
	call	abort
L500:
	movl	$-1, %edi
	call	ashift_si_29
	cmpl	$-536870912, %eax
	je	L501
	call	abort
L501:
	movl	$-1, %edi
	call	ashift_si_30
	cmpl	$-1073741824, %eax
	je	L502
	call	abort
L502:
	movl	$-1, %edi
	call	ashift_si_31
	cmpl	$-2147483648, %eax
	je	L503
	call	abort
L503:
	movl	$-1, %edi
	call	lshiftrt_si_0
	cmpl	$-1, %eax
	je	L504
	call	abort
L504:
	movl	$-1, %edi
	call	lshiftrt_si_1
	cmpl	$2147483647, %eax
	je	L505
	call	abort
L505:
	movl	$-1, %edi
	call	lshiftrt_si_2
	cmpl	$1073741823, %eax
	je	L506
	call	abort
L506:
	movl	$-1, %edi
	call	lshiftrt_si_3
	cmpl	$536870911, %eax
	je	L507
	call	abort
L507:
	movl	$-1, %edi
	call	lshiftrt_si_4
	cmpl	$268435455, %eax
	je	L508
	call	abort
L508:
	movl	$-1, %edi
	call	lshiftrt_si_5
	cmpl	$134217727, %eax
	je	L509
	call	abort
L509:
	movl	$-1, %edi
	call	lshiftrt_si_6
	cmpl	$67108863, %eax
	je	L510
	call	abort
L510:
	movl	$-1, %edi
	call	lshiftrt_si_7
	cmpl	$33554431, %eax
	je	L511
	call	abort
L511:
	movl	$-1, %edi
	call	lshiftrt_si_8
	cmpl	$16777215, %eax
	je	L512
	call	abort
L512:
	movl	$-1, %edi
	call	lshiftrt_si_9
	cmpl	$8388607, %eax
	je	L513
	call	abort
L513:
	movl	$-1, %edi
	call	lshiftrt_si_10
	cmpl	$4194303, %eax
	je	L514
	call	abort
L514:
	movl	$-1, %edi
	call	lshiftrt_si_11
	cmpl	$2097151, %eax
	je	L515
	call	abort
L515:
	movl	$-1, %edi
	call	lshiftrt_si_12
	cmpl	$1048575, %eax
	je	L516
	call	abort
L516:
	movl	$-1, %edi
	call	lshiftrt_si_13
	cmpl	$524287, %eax
	je	L517
	call	abort
L517:
	movl	$-1, %edi
	call	lshiftrt_si_14
	cmpl	$262143, %eax
	je	L518
	call	abort
L518:
	movl	$-1, %edi
	call	lshiftrt_si_15
	cmpl	$131071, %eax
	je	L519
	call	abort
L519:
	movl	$-1, %edi
	call	lshiftrt_si_16
	cmpl	$65535, %eax
	je	L520
	call	abort
L520:
	movl	$-1, %edi
	call	lshiftrt_si_17
	cmpl	$32767, %eax
	je	L521
	call	abort
L521:
	movl	$-1, %edi
	call	lshiftrt_si_18
	cmpl	$16383, %eax
	je	L522
	call	abort
L522:
	movl	$-1, %edi
	call	lshiftrt_si_19
	cmpl	$8191, %eax
	je	L523
	call	abort
L523:
	movl	$-1, %edi
	call	lshiftrt_si_20
	cmpl	$4095, %eax
	je	L524
	call	abort
L524:
	movl	$-1, %edi
	call	lshiftrt_si_21
	cmpl	$2047, %eax
	je	L525
	call	abort
L525:
	movl	$-1, %edi
	call	lshiftrt_si_22
	cmpl	$1023, %eax
	je	L526
	call	abort
L526:
	movl	$-1, %edi
	call	lshiftrt_si_23
	cmpl	$511, %eax
	je	L527
	call	abort
L527:
	movl	$-1, %edi
	call	lshiftrt_si_24
	cmpl	$255, %eax
	je	L528
	call	abort
L528:
	movl	$-1, %edi
	call	lshiftrt_si_25
	cmpl	$127, %eax
	je	L529
	call	abort
L529:
	movl	$-1, %edi
	call	lshiftrt_si_26
	cmpl	$63, %eax
	je	L530
	call	abort
L530:
	movl	$-1, %edi
	call	lshiftrt_si_27
	cmpl	$31, %eax
	je	L531
	call	abort
L531:
	movl	$-1, %edi
	call	lshiftrt_si_28
	cmpl	$15, %eax
	je	L532
	call	abort
L532:
	movl	$-1, %edi
	call	lshiftrt_si_29
	cmpl	$7, %eax
	je	L533
	call	abort
L533:
	movl	$-1, %edi
	call	lshiftrt_si_30
	cmpl	$3, %eax
	je	L534
	call	abort
L534:
	movl	$-1, %edi
	call	lshiftrt_si_31
	cmpl	$1, %eax
	je	L535
	call	abort
L535:
	movl	$-1, %edi
	call	ashiftrt_si_0
	cmpl	$-1, %eax
	je	L536
	call	abort
L536:
	movl	$-1, %edi
	call	ashiftrt_si_1
	cmpl	$-1, %eax
	je	L537
	call	abort
L537:
	movl	$-1, %edi
	call	ashiftrt_si_2
	cmpl	$-1, %eax
	je	L538
	call	abort
L538:
	movl	$-1, %edi
	call	ashiftrt_si_3
	cmpl	$-1, %eax
	je	L539
	call	abort
L539:
	movl	$-1, %edi
	call	ashiftrt_si_4
	cmpl	$-1, %eax
	je	L540
	call	abort
L540:
	movl	$-1, %edi
	call	ashiftrt_si_5
	cmpl	$-1, %eax
	je	L541
	call	abort
L541:
	movl	$-1, %edi
	call	ashiftrt_si_6
	cmpl	$-1, %eax
	je	L542
	call	abort
L542:
	movl	$-1, %edi
	call	ashiftrt_si_7
	cmpl	$-1, %eax
	je	L543
	call	abort
L543:
	movl	$-1, %edi
	call	ashiftrt_si_8
	cmpl	$-1, %eax
	je	L544
	call	abort
L544:
	movl	$-1, %edi
	call	ashiftrt_si_9
	cmpl	$-1, %eax
	je	L545
	call	abort
L545:
	movl	$-1, %edi
	call	ashiftrt_si_10
	cmpl	$-1, %eax
	je	L546
	call	abort
L546:
	movl	$-1, %edi
	call	ashiftrt_si_11
	cmpl	$-1, %eax
	je	L547
	call	abort
L547:
	movl	$-1, %edi
	call	ashiftrt_si_12
	cmpl	$-1, %eax
	je	L548
	call	abort
L548:
	movl	$-1, %edi
	call	ashiftrt_si_13
	cmpl	$-1, %eax
	je	L549
	call	abort
L549:
	movl	$-1, %edi
	call	ashiftrt_si_14
	cmpl	$-1, %eax
	je	L550
	call	abort
L550:
	movl	$-1, %edi
	call	ashiftrt_si_15
	cmpl	$-1, %eax
	je	L551
	call	abort
L551:
	movl	$-1, %edi
	call	ashiftrt_si_16
	cmpl	$-1, %eax
	je	L552
	call	abort
L552:
	movl	$-1, %edi
	call	ashiftrt_si_17
	cmpl	$-1, %eax
	je	L553
	call	abort
L553:
	movl	$-1, %edi
	call	ashiftrt_si_18
	cmpl	$-1, %eax
	je	L554
	call	abort
L554:
	movl	$-1, %edi
	call	ashiftrt_si_19
	cmpl	$-1, %eax
	je	L555
	call	abort
L555:
	movl	$-1, %edi
	call	ashiftrt_si_20
	cmpl	$-1, %eax
	je	L556
	call	abort
L556:
	movl	$-1, %edi
	call	ashiftrt_si_21
	cmpl	$-1, %eax
	je	L557
	call	abort
L557:
	movl	$-1, %edi
	call	ashiftrt_si_22
	cmpl	$-1, %eax
	je	L558
	call	abort
L558:
	movl	$-1, %edi
	call	ashiftrt_si_23
	cmpl	$-1, %eax
	je	L559
	call	abort
L559:
	movl	$-1, %edi
	call	ashiftrt_si_24
	cmpl	$-1, %eax
	je	L560
	call	abort
L560:
	movl	$-1, %edi
	call	ashiftrt_si_25
	cmpl	$-1, %eax
	je	L561
	call	abort
L561:
	movl	$-1, %edi
	call	ashiftrt_si_26
	cmpl	$-1, %eax
	je	L562
	call	abort
L562:
	movl	$-1, %edi
	call	ashiftrt_si_27
	cmpl	$-1, %eax
	je	L563
	call	abort
L563:
	movl	$-1, %edi
	call	ashiftrt_si_28
	cmpl	$-1, %eax
	je	L564
	call	abort
L564:
	movl	$-1, %edi
	call	ashiftrt_si_29
	cmpl	$-1, %eax
	je	L565
	call	abort
L565:
	movl	$-1, %edi
	call	ashiftrt_si_30
	cmpl	$-1, %eax
	je	L566
	call	abort
L566:
	movl	$-1, %edi
	call	ashiftrt_si_31
	cmpl	$-1, %eax
	je	L567
	call	abort
L567:
	movl	$0, %edi
	call	ashiftrt_si_0
	testl	%eax, %eax
	je	L568
	call	abort
L568:
	movl	$0, %edi
	call	ashiftrt_si_1
	testl	%eax, %eax
	je	L569
	call	abort
L569:
	movl	$0, %edi
	call	ashiftrt_si_2
	testl	%eax, %eax
	je	L570
	call	abort
L570:
	movl	$0, %edi
	call	ashiftrt_si_3
	testl	%eax, %eax
	je	L571
	call	abort
L571:
	movl	$0, %edi
	call	ashiftrt_si_4
	testl	%eax, %eax
	je	L572
	call	abort
L572:
	movl	$0, %edi
	call	ashiftrt_si_5
	testl	%eax, %eax
	je	L573
	call	abort
L573:
	movl	$0, %edi
	call	ashiftrt_si_6
	testl	%eax, %eax
	je	L574
	call	abort
L574:
	movl	$0, %edi
	call	ashiftrt_si_7
	testl	%eax, %eax
	je	L575
	call	abort
L575:
	movl	$0, %edi
	call	ashiftrt_si_8
	testl	%eax, %eax
	je	L576
	call	abort
L576:
	movl	$0, %edi
	call	ashiftrt_si_9
	testl	%eax, %eax
	je	L577
	call	abort
L577:
	movl	$0, %edi
	call	ashiftrt_si_10
	testl	%eax, %eax
	je	L578
	call	abort
L578:
	movl	$0, %edi
	call	ashiftrt_si_11
	testl	%eax, %eax
	je	L579
	call	abort
L579:
	movl	$0, %edi
	call	ashiftrt_si_12
	testl	%eax, %eax
	je	L580
	call	abort
L580:
	movl	$0, %edi
	call	ashiftrt_si_13
	testl	%eax, %eax
	je	L581
	call	abort
L581:
	movl	$0, %edi
	call	ashiftrt_si_14
	testl	%eax, %eax
	je	L582
	call	abort
L582:
	movl	$0, %edi
	call	ashiftrt_si_15
	testl	%eax, %eax
	je	L583
	call	abort
L583:
	movl	$0, %edi
	call	ashiftrt_si_16
	testl	%eax, %eax
	je	L584
	call	abort
L584:
	movl	$0, %edi
	call	ashiftrt_si_17
	testl	%eax, %eax
	je	L585
	call	abort
L585:
	movl	$0, %edi
	call	ashiftrt_si_18
	testl	%eax, %eax
	je	L586
	call	abort
L586:
	movl	$0, %edi
	call	ashiftrt_si_19
	testl	%eax, %eax
	je	L587
	call	abort
L587:
	movl	$0, %edi
	call	ashiftrt_si_20
	testl	%eax, %eax
	je	L588
	call	abort
L588:
	movl	$0, %edi
	call	ashiftrt_si_21
	testl	%eax, %eax
	je	L589
	call	abort
L589:
	movl	$0, %edi
	call	ashiftrt_si_22
	testl	%eax, %eax
	je	L590
	call	abort
L590:
	movl	$0, %edi
	call	ashiftrt_si_23
	testl	%eax, %eax
	je	L591
	call	abort
L591:
	movl	$0, %edi
	call	ashiftrt_si_24
	testl	%eax, %eax
	je	L592
	call	abort
L592:
	movl	$0, %edi
	call	ashiftrt_si_25
	testl	%eax, %eax
	je	L593
	call	abort
L593:
	movl	$0, %edi
	call	ashiftrt_si_26
	testl	%eax, %eax
	je	L594
	call	abort
L594:
	movl	$0, %edi
	call	ashiftrt_si_27
	testl	%eax, %eax
	je	L595
	call	abort
L595:
	movl	$0, %edi
	call	ashiftrt_si_28
	testl	%eax, %eax
	je	L596
	call	abort
L596:
	movl	$0, %edi
	call	ashiftrt_si_29
	testl	%eax, %eax
	je	L597
	call	abort
L597:
	movl	$0, %edi
	call	ashiftrt_si_30
	testl	%eax, %eax
	je	L598
	call	abort
L598:
	movl	$0, %edi
	call	ashiftrt_si_31
	testl	%eax, %eax
	je	L599
	call	abort
L599:
	movl	$0, %edi
	call	exit
