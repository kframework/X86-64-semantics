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
one:
	.long	1
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$296, %rsp
	movl	%edi, -292(%rbp)
	movq	%rsi, -304(%rbp)
	movl	one(%rip), %eax
	vmovdqa	LC0(%rip), %xmm0
	vpinsrw	$0, %eax, %xmm0, %xmm0
	vmovaps	%xmm0, -208(%rbp)
	vmovaps	LC1(%rip), %xmm0
	vmovaps	%xmm0, -176(%rbp)
	vmovapd	LC2(%rip), %xmm0
	vmovaps	%xmm0, -192(%rbp)
	vmovdqa	-208(%rbp), %xmm1
	vmovdqa	LC3(%rip), %xmm0
	vpaddw	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -20(%rbp)
	jmp	L40
L42:
	movl	-20(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	-224(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	cwtl
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx), %rcx
	leaq	-208(%rbp), %rdx
	addq	%rcx, %rdx
	movzwl	(%rdx), %edx
	movswl	%dx, %edx
	addl	$2, %edx
	cmpl	%edx, %eax
	je	L41
	call	abort
L41:
	addl	$1, -20(%rbp)
L40:
	cmpl	$7, -20(%rbp)
	jle	L42
	vmovdqa	-208(%rbp), %xmm1
	vmovdqa	LC3(%rip), %xmm0
	vpsubw	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -24(%rbp)
	jmp	L43
L45:
	movl	-24(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	-224(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	cwtl
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx), %rcx
	leaq	-208(%rbp), %rdx
	addq	%rcx, %rdx
	movzwl	(%rdx), %edx
	movswl	%dx, %edx
	movl	$2, %ecx
	subl	%edx, %ecx
	movl	%ecx, %edx
	cmpl	%edx, %eax
	je	L44
	call	abort
L44:
	addl	$1, -24(%rbp)
L43:
	cmpl	$7, -24(%rbp)
	jle	L45
	vmovdqa	-208(%rbp), %xmm0
	vpsllw	$1, %xmm0, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -28(%rbp)
	jmp	L46
L48:
	movl	-28(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	-224(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	cwtl
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx), %rcx
	leaq	-208(%rbp), %rdx
	addq	%rcx, %rdx
	movzwl	(%rdx), %edx
	movswl	%dx, %edx
	addl	%edx, %edx
	cmpl	%edx, %eax
	je	L47
	call	abort
L47:
	addl	$1, -28(%rbp)
L46:
	cmpl	$7, -28(%rbp)
	jle	L48
	vmovdqa	-208(%rbp), %xmm0
	vpextrw	$0, %xmm0, %ebx
	movl	$2, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%bx
	movl	%eax, %r11d
	vpextrw	$1, %xmm0, %ebx
	movl	$2, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%bx
	movl	%eax, %edi
	vpextrw	$2, %xmm0, %ebx
	movl	$2, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%bx
	movl	%eax, %r10d
	vpextrw	$3, %xmm0, %ebx
	movl	$2, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%bx
	movl	%eax, %esi
	vpextrw	$4, %xmm0, %ebx
	movl	$2, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%bx
	movl	%eax, %r9d
	vpextrw	$5, %xmm0, %ebx
	movl	$2, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%bx
	movl	%eax, %ecx
	vpextrw	$6, %xmm0, %ebx
	movl	$2, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%bx
	movl	%eax, %r8d
	vpextrw	$7, %xmm0, %ebx
	movl	$2, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%bx
	movl	%r11d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %edi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r10d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r9d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%r8d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -32(%rbp)
	jmp	L49
L51:
	movl	-32(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	-224(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movswl	%ax, %ecx
	movl	-32(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	-208(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movswl	%ax, %ebx
	movl	$2, %eax
	cltd
	idivl	%ebx
	cmpl	%eax, %ecx
	je	L50
	call	abort
L50:
	addl	$1, -32(%rbp)
L49:
	cmpl	$7, -32(%rbp)
	jle	L51
	vmovdqa	-208(%rbp), %xmm0
	vpextrw	$0, %xmm0, %ecx
	movl	$2, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%cx
	movl	%edx, %r11d
	vpextrw	$1, %xmm0, %ecx
	movl	$2, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%cx
	movl	%edx, %edi
	vpextrw	$2, %xmm0, %ecx
	movl	$2, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%cx
	movl	%edx, %r10d
	vpextrw	$3, %xmm0, %ecx
	movl	$2, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%cx
	movl	%edx, %esi
	vpextrw	$4, %xmm0, %ecx
	movl	$2, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%cx
	movl	%edx, %r9d
	vpextrw	$5, %xmm0, %ecx
	movl	$2, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%cx
	movl	%edx, %ecx
	vpextrw	$6, %xmm0, %r8d
	movl	$2, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%r8w
	movl	%edx, %r8d
	vpextrw	$7, %xmm0, %ebx
	movl	$2, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%bx
	movl	%edx, %eax
	movl	%r11d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %edi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r10d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r9d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%r8d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -36(%rbp)
	jmp	L52
L54:
	movl	-36(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	-224(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movswl	%ax, %ecx
	movl	-36(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	-208(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movswl	%ax, %esi
	movl	$2, %eax
	cltd
	idivl	%esi
	movl	%edx, %eax
	cmpl	%eax, %ecx
	je	L53
	call	abort
L53:
	addl	$1, -36(%rbp)
L52:
	cmpl	$7, -36(%rbp)
	jle	L54
	vmovdqa	-208(%rbp), %xmm1
	vmovdqa	LC3(%rip), %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -40(%rbp)
	jmp	L55
L57:
	movl	-40(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	-224(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx), %rcx
	leaq	-208(%rbp), %rdx
	addq	%rcx, %rdx
	movzwl	(%rdx), %edx
	xorl	$2, %edx
	cmpw	%dx, %ax
	je	L56
	call	abort
L56:
	addl	$1, -40(%rbp)
L55:
	cmpl	$7, -40(%rbp)
	jle	L57
	vmovdqa	-208(%rbp), %xmm1
	vmovdqa	LC3(%rip), %xmm0
	vpand	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -44(%rbp)
	jmp	L58
L60:
	movl	-44(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	-224(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx), %rcx
	leaq	-208(%rbp), %rdx
	addq	%rcx, %rdx
	movzwl	(%rdx), %edx
	andl	$2, %edx
	cmpw	%dx, %ax
	je	L59
	call	abort
L59:
	addl	$1, -44(%rbp)
L58:
	cmpl	$7, -44(%rbp)
	jle	L60
	vmovdqa	-208(%rbp), %xmm1
	vmovdqa	LC3(%rip), %xmm0
	vpor	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -48(%rbp)
	jmp	L61
L63:
	movl	-48(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	-224(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx), %rcx
	leaq	-208(%rbp), %rdx
	addq	%rcx, %rdx
	movzwl	(%rdx), %edx
	orl	$2, %edx
	cmpw	%dx, %ax
	je	L62
	call	abort
L62:
	addl	$1, -48(%rbp)
L61:
	cmpl	$7, -48(%rbp)
	jle	L63
	vmovdqa	-208(%rbp), %xmm0
	vpextrw	$0, %xmm0, %eax
	movl	$2, %edx
	movl	%edx, %ebx
	movl	%eax, %ecx
	shlx	%ecx, %ebx, %ebx
	vpextrw	$1, %xmm0, %eax
	movl	$2, %edx
	movl	%edx, %edi
	movl	%eax, %ecx
	shlx	%ecx, %edi, %edi
	vpextrw	$2, %xmm0, %eax
	movl	$2, %edx
	movl	%eax, %ecx
	shlx	%ecx, %edx, %edx
	movl	%edx, %r11d
	vpextrw	$3, %xmm0, %eax
	movl	$2, %edx
	movl	%edx, %esi
	movl	%eax, %ecx
	shlx	%ecx, %esi, %esi
	vpextrw	$4, %xmm0, %eax
	movl	$2, %edx
	movl	%eax, %ecx
	shlx	%ecx, %edx, %edx
	movl	%edx, %r10d
	vpextrw	$5, %xmm0, %eax
	movl	$2, %edx
	movl	%eax, %ecx
	shlx	%ecx, %edx, %edx
	vpextrw	$6, %xmm0, %eax
	movl	$2, %r8d
	movl	%r8d, %r9d
	movl	%eax, %ecx
	shlx	%ecx, %r9d, %r9d
	vpextrw	$7, %xmm0, %eax
	movl	$2, %r8d
	movl	%eax, %ecx
	shlx	%ecx, %r8d, %r8d
	movl	%r8d, %eax
	movl	%ebx, %ecx
	vmovd	%ecx, %xmm0
	vpinsrw	$1, %edi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r11d, %ecx
	vmovd	%ecx, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r10d, %ecx
	vmovd	%ecx, %xmm0
	vpinsrw	$1, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%r9d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -52(%rbp)
	jmp	L64
L66:
	movl	-52(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	-224(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movswl	%ax, %edx
	movl	-52(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rcx
	leaq	-208(%rbp), %rax
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	cwtl
	movl	$2, %ecx
	shlx	%eax, %ecx, %eax
	cmpl	%eax, %edx
	je	L65
	call	abort
L65:
	addl	$1, -52(%rbp)
L64:
	cmpl	$7, -52(%rbp)
	jle	L66
	vmovdqa	-208(%rbp), %xmm0
	vpextrw	$0, %xmm0, %eax
	movl	$2, %edx
	movl	%edx, %ebx
	movl	%eax, %ecx
	sarw	%cl, %bx
	vpextrw	$1, %xmm0, %eax
	movl	$2, %edx
	movl	%edx, %edi
	movl	%eax, %ecx
	sarw	%cl, %di
	vpextrw	$2, %xmm0, %eax
	movl	$2, %edx
	movl	%eax, %ecx
	sarw	%cl, %dx
	movl	%edx, %r11d
	vpextrw	$3, %xmm0, %eax
	movl	$2, %edx
	movl	%edx, %esi
	movl	%eax, %ecx
	sarw	%cl, %si
	vpextrw	$4, %xmm0, %eax
	movl	$2, %edx
	movl	%eax, %ecx
	sarw	%cl, %dx
	movl	%edx, %r10d
	vpextrw	$5, %xmm0, %eax
	movl	$2, %edx
	movl	%eax, %ecx
	sarw	%cl, %dx
	vpextrw	$6, %xmm0, %eax
	movl	$2, %r8d
	movl	%r8d, %r9d
	movl	%eax, %ecx
	sarw	%cl, %r9w
	vpextrw	$7, %xmm0, %eax
	movl	$2, %r8d
	movl	%eax, %ecx
	sarw	%cl, %r8w
	movl	%r8d, %eax
	movl	%ebx, %ecx
	vmovd	%ecx, %xmm0
	vpinsrw	$1, %edi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r11d, %ecx
	vmovd	%ecx, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r10d, %ecx
	vmovd	%ecx, %xmm0
	vpinsrw	$1, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%r9d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -56(%rbp)
	jmp	L67
L69:
	movl	-56(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	-224(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movswl	%ax, %edx
	movl	-56(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rcx
	leaq	-208(%rbp), %rax
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	cwtl
	movl	$2, %ecx
	sarx	%eax, %ecx, %eax
	cmpl	%eax, %edx
	je	L68
	call	abort
L68:
	addl	$1, -56(%rbp)
L67:
	cmpl	$7, -56(%rbp)
	jle	L69
	vmovdqa	-208(%rbp), %xmm1
	vmovdqa	LC3(%rip), %xmm0
	vpaddw	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -60(%rbp)
	jmp	L70
L72:
	movl	-60(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	-224(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	cwtl
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx), %rcx
	leaq	-208(%rbp), %rdx
	addq	%rcx, %rdx
	movzwl	(%rdx), %edx
	movswl	%dx, %edx
	addl	$2, %edx
	cmpl	%edx, %eax
	je	L71
	call	abort
L71:
	addl	$1, -60(%rbp)
L70:
	cmpl	$7, -60(%rbp)
	jle	L72
	vmovdqa	-208(%rbp), %xmm0
	vmovdqa	LC3(%rip), %xmm1
	vpsubw	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -64(%rbp)
	jmp	L73
L75:
	movl	-64(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	-224(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	cwtl
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx), %rcx
	leaq	-208(%rbp), %rdx
	addq	%rcx, %rdx
	movzwl	(%rdx), %edx
	movswl	%dx, %edx
	subl	$2, %edx
	cmpl	%edx, %eax
	je	L74
	call	abort
L74:
	addl	$1, -64(%rbp)
L73:
	cmpl	$7, -64(%rbp)
	jle	L75
	vmovdqa	-208(%rbp), %xmm0
	vpsllw	$1, %xmm0, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -68(%rbp)
	jmp	L76
L78:
	movl	-68(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	-224(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	cwtl
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx), %rcx
	leaq	-208(%rbp), %rdx
	addq	%rcx, %rdx
	movzwl	(%rdx), %edx
	movswl	%dx, %edx
	addl	%edx, %edx
	cmpl	%edx, %eax
	je	L77
	call	abort
L77:
	addl	$1, -68(%rbp)
L76:
	cmpl	$7, -68(%rbp)
	jle	L78
	vmovdqa	-208(%rbp), %xmm0
	vpextrw	$0, %xmm0, %eax
	movl	%eax, %edx
	shrw	$15, %dx
	addl	%edx, %eax
	sarw	%ax
	movl	%eax, %r10d
	vpextrw	$1, %xmm0, %eax
	movl	%eax, %edx
	shrw	$15, %dx
	addl	%edx, %eax
	sarw	%ax
	movl	%eax, %esi
	vpextrw	$2, %xmm0, %eax
	movl	%eax, %edx
	shrw	$15, %dx
	addl	%edx, %eax
	sarw	%ax
	movl	%eax, %r9d
	vpextrw	$3, %xmm0, %eax
	movl	%eax, %edx
	shrw	$15, %dx
	addl	%edx, %eax
	sarw	%ax
	movl	%eax, %ecx
	vpextrw	$4, %xmm0, %eax
	movl	%eax, %edx
	shrw	$15, %dx
	addl	%edx, %eax
	sarw	%ax
	movl	%eax, %r8d
	vpextrw	$5, %xmm0, %eax
	movl	%eax, %edx
	shrw	$15, %dx
	addl	%edx, %eax
	sarw	%ax
	movl	%eax, %edx
	vpextrw	$6, %xmm0, %eax
	movl	%eax, %edi
	shrw	$15, %di
	addl	%edi, %eax
	sarw	%ax
	movl	%eax, %edi
	vpextrw	$7, %xmm0, %eax
	movl	%eax, %r11d
	shrw	$15, %r11w
	addl	%r11d, %eax
	sarw	%ax
	vmovd	%r10d, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r9d, %esi
	vmovd	%esi, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r8d, %ecx
	vmovd	%ecx, %xmm0
	vpinsrw	$1, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%edi, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -72(%rbp)
	jmp	L79
L81:
	movl	-72(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	-224(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %edx
	movl	-72(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rcx
	leaq	-208(%rbp), %rax
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	movl	%eax, %ecx
	shrw	$15, %cx
	addl	%ecx, %eax
	sarw	%ax
	cmpw	%ax, %dx
	je	L80
	call	abort
L80:
	addl	$1, -72(%rbp)
L79:
	cmpl	$7, -72(%rbp)
	jle	L81
	vmovdqa	-208(%rbp), %xmm0
	vpextrw	$0, %xmm0, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$15, %dx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	movl	%eax, %r11d
	vpextrw	$1, %xmm0, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$15, %dx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	movl	%eax, %edi
	vpextrw	$2, %xmm0, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$15, %dx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	movl	%eax, %r10d
	vpextrw	$3, %xmm0, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$15, %dx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	movl	%eax, %esi
	vpextrw	$4, %xmm0, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$15, %dx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	movl	%eax, %r9d
	vpextrw	$5, %xmm0, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$15, %dx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	vpextrw	$6, %xmm0, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$15, %dx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	movl	%eax, %r8d
	vpextrw	$7, %xmm0, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$15, %dx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	movl	%r11d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %edi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r10d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r9d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%r8d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -76(%rbp)
	jmp	L82
L84:
	movl	-76(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	-224(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %ecx
	movl	-76(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	-208(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$15, %dx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	cmpw	%ax, %cx
	je	L83
	call	abort
L83:
	addl	$1, -76(%rbp)
L82:
	cmpl	$7, -76(%rbp)
	jle	L84
	vmovdqa	-208(%rbp), %xmm1
	vmovdqa	LC3(%rip), %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -80(%rbp)
	jmp	L85
L87:
	movl	-80(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	-224(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movl	-80(%rbp), %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx), %rcx
	leaq	-208(%rbp), %rdx
	addq	%rcx, %rdx
	movzwl	(%rdx), %edx
	xorl	$2, %edx
	cmpw	%dx, %ax
	je	L86
	call	abort
L86:
	addl	$1, -80(%rbp)
L85:
	cmpl	$7, -80(%rbp)
	jle	L87
	vmovdqa	-208(%rbp), %xmm1
	vmovdqa	LC3(%rip), %xmm0
	vpand	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -84(%rbp)
	jmp	L88
L90:
	movl	-84(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	-224(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	cwtl
	movl	-84(%rbp), %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx), %rcx
	leaq	-208(%rbp), %rdx
	addq	%rcx, %rdx
	movzwl	(%rdx), %edx
	movswl	%dx, %edx
	andl	$2, %edx
	cmpl	%edx, %eax
	je	L89
	call	abort
L89:
	addl	$1, -84(%rbp)
L88:
	cmpl	$7, -84(%rbp)
	jle	L90
	vmovdqa	-208(%rbp), %xmm1
	vmovdqa	LC3(%rip), %xmm0
	vpor	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -88(%rbp)
	jmp	L91
L93:
	movl	-88(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	-224(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movl	-88(%rbp), %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx), %rcx
	leaq	-208(%rbp), %rdx
	addq	%rcx, %rdx
	movzwl	(%rdx), %edx
	orl	$2, %edx
	cmpw	%dx, %ax
	je	L92
	call	abort
L92:
	addl	$1, -88(%rbp)
L91:
	cmpl	$7, -88(%rbp)
	jle	L93
	vmovaps	LC4(%rip), %xmm0
	vaddps	-176(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -240(%rbp)
	vmovaps	LC4(%rip), %xmm0
	vaddps	-176(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -256(%rbp)
	movl	$0, -92(%rbp)
	jmp	L94
L97:
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-240(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-92(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-256(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	vmovd	%eax, %xmm5
	vmovd	%edx, %xmm6
	vucomiss	%xmm6, %xmm5
	jp	L159
	vmovd	%eax, %xmm7
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm7
	je	L175
L159:
	call	abort
L175:
	addl	$1, -92(%rbp)
L94:
	cmpl	$3, -92(%rbp)
	jle	L97
	vmovaps	LC4(%rip), %xmm0
	vsubps	-176(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -240(%rbp)
	vmovaps	LC4(%rip), %xmm0
	vsubps	-176(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -256(%rbp)
	movl	$0, -96(%rbp)
	jmp	L98
L101:
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-240(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-96(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-256(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vucomiss	%xmm7, %xmm6
	jp	L160
	vmovd	%eax, %xmm5
	vmovd	%edx, %xmm6
	vucomiss	%xmm6, %xmm5
	je	L176
L160:
	call	abort
L176:
	addl	$1, -96(%rbp)
L98:
	cmpl	$3, -96(%rbp)
	jle	L101
	vmovaps	-176(%rbp), %xmm0
	vaddps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -240(%rbp)
	vmovaps	-176(%rbp), %xmm0
	vaddps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -256(%rbp)
	movl	$0, -100(%rbp)
	jmp	L102
L105:
	movl	-100(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-240(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-100(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-256(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	vmovd	%eax, %xmm7
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm7
	jp	L161
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vucomiss	%xmm7, %xmm6
	je	L177
L161:
	call	abort
L177:
	addl	$1, -100(%rbp)
L102:
	cmpl	$3, -100(%rbp)
	jle	L105
	vmovaps	LC4(%rip), %xmm0
	vdivps	-176(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -240(%rbp)
	vmovaps	LC4(%rip), %xmm0
	vdivps	-176(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -256(%rbp)
	movl	$0, -104(%rbp)
	jmp	L106
L109:
	movl	-104(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-240(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-104(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-256(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	vmovd	%eax, %xmm5
	vmovd	%edx, %xmm6
	vucomiss	%xmm6, %xmm5
	jp	L162
	vmovd	%eax, %xmm7
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm7
	je	L178
L162:
	call	abort
L178:
	addl	$1, -104(%rbp)
L106:
	cmpl	$3, -104(%rbp)
	jle	L109
	vmovaps	LC4(%rip), %xmm0
	vaddps	-176(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -240(%rbp)
	vmovaps	LC4(%rip), %xmm0
	vaddps	-176(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -256(%rbp)
	movl	$0, -108(%rbp)
	jmp	L110
L113:
	movl	-108(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-240(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-108(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-256(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vucomiss	%xmm7, %xmm6
	jp	L163
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vucomiss	%xmm3, %xmm2
	je	L179
L163:
	call	abort
L179:
	addl	$1, -108(%rbp)
L110:
	cmpl	$3, -108(%rbp)
	jle	L113
	vmovaps	LC5(%rip), %xmm0
	vaddps	-176(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -240(%rbp)
	vmovaps	LC5(%rip), %xmm0
	vaddps	-176(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -256(%rbp)
	movl	$0, -112(%rbp)
	jmp	L114
L117:
	movl	-112(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-240(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-112(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-256(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm4
	jp	L164
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vucomiss	%xmm7, %xmm6
	je	L180
L164:
	call	abort
L180:
	addl	$1, -112(%rbp)
L114:
	cmpl	$3, -112(%rbp)
	jle	L117
	vmovaps	-176(%rbp), %xmm0
	vaddps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -240(%rbp)
	vmovaps	-176(%rbp), %xmm0
	vaddps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -256(%rbp)
	movl	$0, -116(%rbp)
	jmp	L118
L121:
	movl	-116(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-240(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-256(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vucomiss	%xmm3, %xmm2
	jp	L165
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm4
	je	L181
L165:
	call	abort
L181:
	addl	$1, -116(%rbp)
L118:
	cmpl	$3, -116(%rbp)
	jle	L121
	vmovaps	-176(%rbp), %xmm0
	vmovaps	LC4(%rip), %xmm1
	vdivps	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, -240(%rbp)
	vmovaps	-176(%rbp), %xmm0
	vmovaps	LC4(%rip), %xmm1
	vdivps	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, -256(%rbp)
	movl	$0, -120(%rbp)
	jmp	L122
L125:
	movl	-120(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-240(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-120(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-256(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vucomiss	%xmm7, %xmm6
	jp	L166
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vucomiss	%xmm3, %xmm2
	je	L182
L166:
	call	abort
L182:
	addl	$1, -120(%rbp)
L122:
	cmpl	$3, -120(%rbp)
	jle	L125
	vmovapd	LC6(%rip), %xmm0
	vaddpd	-192(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -272(%rbp)
	vmovapd	LC6(%rip), %xmm0
	vaddpd	-192(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -288(%rbp)
	movl	$0, -124(%rbp)
	jmp	L126
L129:
	movl	-124(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-272(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-124(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	-288(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jp	L167
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	je	L183
L167:
	call	abort
L183:
	addl	$1, -124(%rbp)
L126:
	cmpl	$1, -124(%rbp)
	jle	L129
	vmovapd	LC6(%rip), %xmm0
	vsubpd	-192(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -272(%rbp)
	vmovapd	LC6(%rip), %xmm0
	vsubpd	-192(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -288(%rbp)
	movl	$0, -128(%rbp)
	jmp	L130
L133:
	movl	-128(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-272(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-128(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	-288(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jp	L168
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	je	L184
L168:
	call	abort
L184:
	addl	$1, -128(%rbp)
L130:
	cmpl	$1, -128(%rbp)
	jle	L133
	vmovapd	-192(%rbp), %xmm0
	vaddpd	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -272(%rbp)
	vmovapd	-192(%rbp), %xmm0
	vaddpd	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -288(%rbp)
	movl	$0, -132(%rbp)
	jmp	L134
L137:
	movl	-132(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-272(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-132(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	-288(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	jp	L169
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	je	L185
L169:
	call	abort
L185:
	addl	$1, -132(%rbp)
L134:
	cmpl	$1, -132(%rbp)
	jle	L137
	vmovapd	LC6(%rip), %xmm0
	vdivpd	-192(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -272(%rbp)
	vmovapd	LC6(%rip), %xmm0
	vdivpd	-192(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -288(%rbp)
	movl	$0, -136(%rbp)
	jmp	L138
L141:
	movl	-136(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-272(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-136(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	-288(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jp	L170
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	je	L186
L170:
	call	abort
L186:
	addl	$1, -136(%rbp)
L138:
	cmpl	$1, -136(%rbp)
	jle	L141
	vmovapd	LC6(%rip), %xmm0
	vaddpd	-192(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -272(%rbp)
	vmovapd	LC6(%rip), %xmm0
	vaddpd	-192(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -288(%rbp)
	movl	$0, -140(%rbp)
	jmp	L142
L145:
	movl	-140(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-272(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-140(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	-288(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jp	L171
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	je	L187
L171:
	call	abort
L187:
	addl	$1, -140(%rbp)
L142:
	cmpl	$1, -140(%rbp)
	jle	L145
	vmovapd	LC7(%rip), %xmm0
	vaddpd	-192(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -272(%rbp)
	vmovapd	LC7(%rip), %xmm0
	vaddpd	-192(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -288(%rbp)
	movl	$0, -144(%rbp)
	jmp	L146
L149:
	movl	-144(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-272(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-144(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	-288(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	jp	L172
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	je	L188
L172:
	call	abort
L188:
	addl	$1, -144(%rbp)
L146:
	cmpl	$1, -144(%rbp)
	jle	L149
	vmovapd	-192(%rbp), %xmm0
	vaddpd	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -272(%rbp)
	vmovapd	-192(%rbp), %xmm0
	vaddpd	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -288(%rbp)
	movl	$0, -148(%rbp)
	jmp	L150
L153:
	movl	-148(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-272(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-148(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	-288(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jp	L173
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	je	L189
L173:
	call	abort
L189:
	addl	$1, -148(%rbp)
L150:
	cmpl	$1, -148(%rbp)
	jle	L153
	vmovapd	-192(%rbp), %xmm0
	vmovapd	LC6(%rip), %xmm1
	vdivpd	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, -272(%rbp)
	vmovapd	-192(%rbp), %xmm0
	vmovapd	LC6(%rip), %xmm1
	vdivpd	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, -288(%rbp)
	movl	$0, -152(%rbp)
	jmp	L154
L157:
	movl	-152(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-272(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-152(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	-288(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jp	L174
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	je	L190
L174:
	call	abort
L190:
	addl	$1, -152(%rbp)
L154:
	cmpl	$1, -152(%rbp)
	jle	L157
	movl	$0, %eax
	addq	$296, %rsp
	popq	%rbx
	popq	%rbp
	ret
LC0:
	.value	0
	.value	1
	.value	2
	.value	3
	.value	4
	.value	5
	.value	6
	.value	7
LC1:
	.long	1065353216
	.long	1073741824
	.long	1077936128
	.long	1082130432
LC2:
	.long	0
	.long	1072693248
	.long	0
	.long	1073741824
LC3:
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
	.value	2
LC4:
	.long	1073741824
	.long	1073741824
	.long	1073741824
	.long	1073741824
LC5:
	.long	3221225472
	.long	3221225472
	.long	3221225472
	.long	3221225472
LC6:
	.long	0
	.long	1073741824
	.long	0
	.long	1073741824
LC7:
	.long	0
	.long	-1073741824
	.long	0
	.long	-1073741824
