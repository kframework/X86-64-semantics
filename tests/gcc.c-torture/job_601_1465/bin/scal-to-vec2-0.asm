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
	jmp	L18
L20:
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
	je	L19
	call	abort
L19:
	addl	$1, -20(%rbp)
L18:
	cmpl	$15, -20(%rbp)
	jle	L20
	movl	$0, %eax
	call	vsrt
	vmovd	%eax, %xmm0
	vpbroadcastw	%xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	vmovdqa	-112(%rbp), %xmm0
	vpaddw	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, -128(%rbp)
	movl	$0, -24(%rbp)
	jmp	L21
L23:
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
	je	L22
	call	abort
L22:
	addl	$1, -24(%rbp)
L21:
	cmpl	$7, -24(%rbp)
	jle	L23
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
	jmp	L24
L26:
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
	je	L25
	call	abort
L25:
	addl	$1, -28(%rbp)
L24:
	cmpl	$7, -28(%rbp)
	jle	L26
	movl	$0, %eax
	call	vint
	vmovd	%eax, %xmm6
	vpshufd	$0, %xmm6, %xmm0
	vmovdqa	%xmm0, %xmm1
	vmovdqa	-144(%rbp), %xmm0
	vpmulld	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, -160(%rbp)
	movl	$0, -32(%rbp)
	jmp	L27
L29:
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
	je	L28
	call	abort
L28:
	addl	$1, -32(%rbp)
L27:
	cmpl	$3, -32(%rbp)
	jle	L29
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
	jmp	L30
L32:
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
	je	L31
	call	abort
L31:
	addl	$1, -36(%rbp)
L30:
	cmpl	$3, -36(%rbp)
	jle	L32
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
	jmp	L33
L35:
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
	je	L34
	call	abort
L34:
	addl	$1, -40(%rbp)
L33:
	cmpl	$3, -40(%rbp)
	jle	L35
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
	jmp	L36
L38:
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
	je	L37
	call	abort
L37:
	addl	$1, -44(%rbp)
L36:
	cmpl	$1, -44(%rbp)
	jle	L38
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
	jmp	L39
L41:
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
	je	L40
	call	abort
L40:
	addl	$1, -48(%rbp)
L39:
	cmpl	$1, -48(%rbp)
	jle	L41
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
	jmp	L42
L44:
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
	je	L43
	call	abort
L43:
	addl	$1, -52(%rbp)
L42:
	cmpl	$1, -52(%rbp)
	jle	L44
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
	jmp	L45
L47:
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
	je	L46
	call	abort
L46:
	addl	$1, -56(%rbp)
L45:
	cmpl	$1, -56(%rbp)
	jle	L47
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
