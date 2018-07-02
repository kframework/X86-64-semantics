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
vlng:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, %eax
	popq	%rbp
	ret
vint:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$43, %eax
	popq	%rbp
	ret
vsrt:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, %eax
	popq	%rbp
	ret
vchr:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$200, %rsp
	movl	%edi, -196(%rbp)
	movq	%rsi, -208(%rbp)
	movl	-196(%rbp), %eax
	movl	-196(%rbp), %edx
	vmovd	%eax, %xmm0
	movl	$1, %eax
	vpinsrb	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	$2, %eax
	vmovd	%eax, %xmm0
	movl	$3, %eax
	vpinsrb	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm8
	movl	$4, %eax
	vmovd	%eax, %xmm0
	movl	$5, %eax
	vpinsrb	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	movl	$6, %eax
	vmovd	%eax, %xmm0
	movl	$7, %eax
	vpinsrb	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm7
	movl	%edx, %eax
	vmovd	%eax, %xmm0
	movl	$1, %eax
	vpinsrb	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	$2, %eax
	vmovd	%eax, %xmm0
	movl	$3, %eax
	vpinsrb	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm6
	movl	$4, %eax
	vmovd	%eax, %xmm0
	movl	$5, %eax
	vpinsrb	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	$6, %eax
	vmovd	%eax, %xmm0
	movl	$7, %eax
	vpinsrb	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm5
	vpunpcklwd	%xmm8, %xmm4, %xmm0
	vpunpcklwd	%xmm7, %xmm3, %xmm3
	vpunpcklwd	%xmm6, %xmm1, %xmm1
	vpunpcklwd	%xmm5, %xmm2, %xmm2
	vpunpckldq	%xmm3, %xmm0, %xmm0
	vpunpckldq	%xmm2, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, -80(%rbp)
	movl	-196(%rbp), %eax
	vmovdqa	LC0(%rip), %xmm0
	vpinsrw	$0, %eax, %xmm0, %xmm0
	vmovaps	%xmm0, -112(%rbp)
	vmovdqa	LC1(%rip), %xmm0
	vpinsrd	$0, -196(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -144(%rbp)
	movl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movl	$1, %eax
	vmovq	%rdx, %xmm5
	vpinsrq	$1, %rax, %xmm5, %xmm0
	vmovaps	%xmm0, -176(%rbp)
	movl	$0, %eax
	call	vchr
	vmovd	%eax, %xmm0
	vpbroadcastb	%xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	vmovdqa	-80(%rbp), %xmm0
	vpaddb	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, -96(%rbp)
	movl	$0, -20(%rbp)
	jmp	L48
L50:
	movl	-20(%rbp), %eax
	cltq
	leaq	-96(%rbp), %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	$0, %eax
	call	vchr
	movsbl	%al, %edx
	movl	-20(%rbp), %eax
	cltq
	leaq	-80(%rbp), %rcx
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	addl	%edx, %eax
	cmpl	%eax, %ebx
	je	L49
	call	abort
L49:
	addl	$1, -20(%rbp)
L48:
	cmpl	$15, -20(%rbp)
	jle	L50
	movl	$0, %eax
	call	vsrt
	vmovd	%eax, %xmm0
	vpbroadcastw	%xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	vmovdqa	-112(%rbp), %xmm0
	vpaddw	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, -128(%rbp)
	movl	$0, -24(%rbp)
	jmp	L51
L53:
	movl	-24(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movswl	%ax, %ebx
	movl	$0, %eax
	call	vsrt
	movswl	%ax, %edx
	movl	-24(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rcx
	leaq	-112(%rbp), %rax
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	cwtl
	addl	%edx, %eax
	cmpl	%eax, %ebx
	je	L52
	call	abort
L52:
	addl	$1, -24(%rbp)
L51:
	cmpl	$7, -24(%rbp)
	jle	L53
	movl	$0, %eax
	call	vchr
	movsbw	%al, %r10w
	movsbw	%al, %si
	movsbw	%al, %r9w
	movsbw	%al, %cx
	movsbw	%al, %r8w
	movsbw	%al, %dx
	movsbw	%al, %di
	cbtw
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
	vmovdqa	%xmm0, %xmm1
	vmovdqa	-112(%rbp), %xmm0
	vpaddw	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, -128(%rbp)
	movl	$0, -28(%rbp)
	jmp	L54
L56:
	movl	-28(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	leaq	-128(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movswl	%ax, %ebx
	movl	$0, %eax
	call	vchr
	movsbl	%al, %edx
	movl	-28(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rcx
	leaq	-112(%rbp), %rax
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	cwtl
	addl	%edx, %eax
	cmpl	%eax, %ebx
	je	L55
	call	abort
L55:
	addl	$1, -28(%rbp)
L54:
	cmpl	$7, -28(%rbp)
	jle	L56
	movl	$0, %eax
	call	vint
	vmovd	%eax, %xmm6
	vpshufd	$0, %xmm6, %xmm0
	vmovdqa	%xmm0, %xmm1
	vmovdqa	-144(%rbp), %xmm0
	vpmulld	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, -160(%rbp)
	movl	$0, -32(%rbp)
	jmp	L57
L59:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-160(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ebx
	movl	$0, %eax
	call	vint
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-144(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	imull	%edx, %eax
	cmpl	%eax, %ebx
	je	L58
	call	abort
L58:
	addl	$1, -32(%rbp)
L57:
	cmpl	$3, -32(%rbp)
	jle	L59
	movl	$0, %eax
	call	vsrt
	movswl	%ax, %ecx
	movswl	%ax, %edx
	movswl	%ax, %esi
	cwtl
	vmovd	%esi, %xmm5
	vpinsrd	$1, %eax, %xmm5, %xmm7
	vmovq	%xmm7, %rax
	vmovd	%ecx, %xmm7
	vpinsrd	$1, %edx, %xmm7, %xmm6
	vmovq	%xmm6, %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vpunpcklqdq	%xmm6, %xmm5, %xmm0
	vmovdqa	%xmm0, %xmm1
	vmovdqa	-144(%rbp), %xmm0
	vpmulld	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, -160(%rbp)
	movl	$0, -36(%rbp)
	jmp	L60
L62:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-160(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ebx
	movl	$0, %eax
	call	vsrt
	movswl	%ax, %edx
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	-144(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	cmpl	%eax, %ebx
	je	L61
	call	abort
L61:
	addl	$1, -36(%rbp)
L60:
	cmpl	$3, -36(%rbp)
	jle	L62
	movl	$0, %eax
	call	vchr
	movsbl	%al, %ecx
	movsbl	%al, %edx
	movsbl	%al, %esi
	movsbl	%al, %eax
	vmovd	%esi, %xmm5
	vpinsrd	$1, %eax, %xmm5, %xmm7
	vmovq	%xmm7, %rax
	vmovd	%ecx, %xmm7
	vpinsrd	$1, %edx, %xmm7, %xmm6
	vmovq	%xmm6, %rdx
	vmovq	%rdx, %xmm5
	vmovq	%rax, %xmm6
	vpunpcklqdq	%xmm6, %xmm5, %xmm0
	vmovdqa	%xmm0, %xmm1
	vmovdqa	-144(%rbp), %xmm0
	vpmulld	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, -160(%rbp)
	movl	$0, -40(%rbp)
	jmp	L63
L65:
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-160(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %ebx
	movl	$0, %eax
	call	vchr
	movsbl	%al, %edx
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	-144(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	imull	%edx, %eax
	cmpl	%eax, %ebx
	je	L64
	call	abort
L64:
	addl	$1, -40(%rbp)
L63:
	cmpl	$3, -40(%rbp)
	jle	L65
	movl	$0, %eax
	call	vlng
	vmovq	%rax, %xmm7
	vpunpcklqdq	%xmm7, %xmm7, %xmm0
	vmovdqa	%xmm0, %xmm1
	vmovdqa	-176(%rbp), %xmm0
	vpmuludq	%xmm0, %xmm1, %xmm2
	vpsrlq	$32, %xmm1, %xmm4
	vpsrlq	$32, %xmm0, %xmm3
	vpmuludq	%xmm0, %xmm4, %xmm0
	vpmuludq	%xmm1, %xmm3, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vpsllq	$32, %xmm0, %xmm0
	vpaddq	%xmm0, %xmm2, %xmm0
	vmovaps	%xmm0, -192(%rbp)
	movl	$0, -44(%rbp)
	jmp	L66
L68:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-192(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rbx
	movl	$0, %eax
	call	vlng
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	-176(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	imulq	%rdx, %rax
	cmpq	%rax, %rbx
	je	L67
	call	abort
L67:
	addl	$1, -44(%rbp)
L66:
	cmpl	$1, -44(%rbp)
	jle	L68
	movl	$0, %eax
	call	vint
	movslq	%eax, %rdx
	cltq
	vmovq	%rdx, %xmm4
	vpinsrq	$1, %rax, %xmm4, %xmm0
	vmovdqa	%xmm0, %xmm1
	vmovdqa	-176(%rbp), %xmm0
	vpmuludq	%xmm0, %xmm1, %xmm2
	vpsrlq	$32, %xmm1, %xmm4
	vpsrlq	$32, %xmm0, %xmm3
	vpmuludq	%xmm0, %xmm4, %xmm0
	vpmuludq	%xmm1, %xmm3, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vpsllq	$32, %xmm0, %xmm0
	vpaddq	%xmm0, %xmm2, %xmm0
	vmovaps	%xmm0, -192(%rbp)
	movl	$0, -48(%rbp)
	jmp	L69
L71:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-192(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rbx
	movl	$0, %eax
	call	vint
	movslq	%eax, %rdx
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	-176(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	imulq	%rdx, %rax
	cmpq	%rax, %rbx
	je	L70
	call	abort
L70:
	addl	$1, -48(%rbp)
L69:
	cmpl	$1, -48(%rbp)
	jle	L71
	movl	$0, %eax
	call	vsrt
	movswq	%ax, %rdx
	movswq	%ax, %rax
	vmovq	%rdx, %xmm5
	vpinsrq	$1, %rax, %xmm5, %xmm0
	vmovdqa	%xmm0, %xmm1
	vmovdqa	-176(%rbp), %xmm0
	vpmuludq	%xmm0, %xmm1, %xmm2
	vpsrlq	$32, %xmm1, %xmm4
	vpsrlq	$32, %xmm0, %xmm3
	vpmuludq	%xmm0, %xmm4, %xmm0
	vpmuludq	%xmm1, %xmm3, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vpsllq	$32, %xmm0, %xmm0
	vpaddq	%xmm0, %xmm2, %xmm0
	vmovaps	%xmm0, -192(%rbp)
	movl	$0, -52(%rbp)
	jmp	L72
L74:
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-192(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rbx
	movl	$0, %eax
	call	vsrt
	movswq	%ax, %rdx
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	-176(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	imulq	%rdx, %rax
	cmpq	%rax, %rbx
	je	L73
	call	abort
L73:
	addl	$1, -52(%rbp)
L72:
	cmpl	$1, -52(%rbp)
	jle	L74
	movl	$0, %eax
	call	vchr
	movsbq	%al, %rdx
	movsbq	%al, %rax
	vmovq	%rdx, %xmm6
	vpinsrq	$1, %rax, %xmm6, %xmm0
	vmovdqa	%xmm0, %xmm1
	vmovdqa	-176(%rbp), %xmm0
	vpmuludq	%xmm0, %xmm1, %xmm2
	vpsrlq	$32, %xmm1, %xmm4
	vpsrlq	$32, %xmm0, %xmm3
	vpmuludq	%xmm0, %xmm4, %xmm0
	vpmuludq	%xmm1, %xmm3, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vpsllq	$32, %xmm0, %xmm0
	vpaddq	%xmm0, %xmm2, %xmm0
	vmovaps	%xmm0, -192(%rbp)
	movl	$0, -56(%rbp)
	jmp	L75
L77:
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-192(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rbx
	movl	$0, %eax
	call	vchr
	movsbq	%al, %rdx
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	leaq	-176(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	imulq	%rdx, %rax
	cmpq	%rax, %rbx
	je	L76
	call	abort
L76:
	addl	$1, -56(%rbp)
L75:
	cmpl	$1, -56(%rbp)
	jle	L77
	movl	$0, %eax
	addq	$200, %rsp
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
	.long	0
	.long	1
	.long	2
	.long	3
