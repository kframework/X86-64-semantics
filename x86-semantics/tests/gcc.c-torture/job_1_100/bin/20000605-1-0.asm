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
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	popq	%rbp
	ret
render_image_rgb_a:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	$256, -12(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %edx
	movl	LC0(%rip), %eax
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vdivss	%xmm3, %xmm2, %xmm1
	vmovd	%xmm1, %eax
	movl	%eax, -16(%rbp)
	vxorps	%xmm4, %xmm4, %xmm4
	vcvtsi2ss	-4(%rbp), %xmm4, %xmm4
	vmovd	%xmm4, %eax
	vmovd	%eax, %xmm6
	vmulss	-16(%rbp), %xmm6, %xmm5
	vmovd	%xmm5, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm7
	vcvttss2si	%xmm7, %eax
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2ss	%eax, %xmm1, %xmm1
	vmovd	%xmm1, %eax
	vmovd	%eax, %xmm2
	vsubss	-16(%rbp), %xmm2, %xmm0
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm4
	vsubss	%xmm0, %xmm4, %xmm3
	vmovd	%xmm3, %eax
	movl	%eax, -8(%rbp)
	jmp	L41
L44:
	movl	-8(%rbp), %eax
	movl	LC0(%rip), %edx
	vmovd	%eax, %xmm5
	vmovd	%edx, %xmm6
	vucomiss	%xmm6, %xmm5
	jb	L42
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm7
	vcvttss2si	%xmm7, %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm0
	vcvttss2si	%xmm0, %eax
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ss	%eax, %xmm0, %xmm0
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm2
	vsubss	%xmm0, %xmm2, %xmm1
	vmovd	%xmm1, %eax
	movl	%eax, -8(%rbp)
	call	bar
L42:
	movl	-8(%rbp), %eax
	vmovd	%eax, %xmm4
	vaddss	-16(%rbp), %xmm4, %xmm3
	vmovd	%xmm3, %eax
	movl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
L41:
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	L44
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -16(%rbp)
	movl	$0, -8(%rbp)
	movl	LC0(%rip), %eax
	movl	%eax, -12(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	render_image_rgb_a
	cmpl	$256, %eax
	je	L48
	call	abort
L48:
	movl	$0, %edi
	call	exit
LC0:
	.long	1065353216
