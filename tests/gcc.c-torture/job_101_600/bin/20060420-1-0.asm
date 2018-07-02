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
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movl	%ecx, -120(%rbp)
	movl	$4, -88(%rbp)
	movl	$15, -92(%rbp)
	movl	$0, -8(%rbp)
	jmp	L40
L44:
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	$1, -4(%rbp)
	jmp	L41
L42:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-12(%rbp), %edx
	vmovd	%edx, %xmm2
	vmovd	%eax, %xmm3
	vaddss	%xmm3, %xmm2, %xmm1
	vmovd	%xmm1, %eax
	movl	%eax, -12(%rbp)
	addl	$1, -4(%rbp)
L41:
	movl	-4(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	L42
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movl	-12(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -8(%rbp)
L40:
	movl	-8(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jge	L43
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movl	-92(%rbp), %eax
	andq	%rdx, %rax
	testq	%rax, %rax
	jne	L44
L43:
	jmp	L45
L48:
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	vmovaps	(%rax), %xmm0
	vmovaps	%xmm0, -32(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rcx
	movl	-88(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	vmovaps	(%rax), %xmm0
	vmovaps	%xmm0, -48(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rcx
	movl	-88(%rbp), %edx
	addl	%edx, %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	vmovaps	(%rax), %xmm0
	vmovaps	%xmm0, -64(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rsi
	movl	-88(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cltq
	addq	%rsi, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	vmovaps	(%rax), %xmm0
	vmovaps	%xmm0, -80(%rbp)
	movl	$1, -4(%rbp)
	jmp	L46
L47:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	vmovaps	(%rax), %xmm0
	vaddps	-32(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -32(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rcx
	movl	-88(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	vmovaps	(%rax), %xmm0
	vaddps	-48(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -48(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rcx
	movl	-88(%rbp), %edx
	addl	%edx, %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	vmovaps	(%rax), %xmm0
	vaddps	-64(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -64(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rsi
	movl	-88(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cltq
	addq	%rsi, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	vmovaps	(%rax), %xmm0
	vaddps	-80(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -80(%rbp)
	addl	$1, -4(%rbp)
L46:
	movl	-4(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	L47
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	vmovaps	-32(%rbp), %xmm0
	vmovaps	%xmm0, (%rax)
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movl	-88(%rbp), %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	vmovaps	-48(%rbp), %xmm0
	vmovaps	%xmm0, (%rax)
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movl	-88(%rbp), %eax
	addl	%eax, %eax
	cltq
	addq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	vmovaps	-64(%rbp), %xmm0
	vmovaps	%xmm0, (%rax)
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movl	-88(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	cltq
	addq	%rcx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rdx, %rax
	vmovaps	-80(%rbp), %xmm0
	vmovaps	%xmm0, (%rax)
	movl	-88(%rbp), %eax
	sall	$2, %eax
	addl	%eax, -8(%rbp)
L45:
	movl	-88(%rbp), %edx
	movl	$0, %eax
	subl	%edx, %eax
	sall	$2, %eax
	leal	1(%rax), %edx
	movl	-120(%rbp), %eax
	addl	%edx, %eax
	cmpl	-8(%rbp), %eax
	jg	L48
	jmp	L49
L52:
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -84(%rbp)
	movl	$1, -4(%rbp)
	jmp	L50
L51:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-84(%rbp), %edx
	vmovd	%edx, %xmm5
	vmovd	%eax, %xmm6
	vaddss	%xmm6, %xmm5, %xmm4
	vmovd	%xmm4, %eax
	movl	%eax, -84(%rbp)
	addl	$1, -4(%rbp)
L50:
	movl	-4(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	L51
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-104(%rbp), %rax
	addq	%rax, %rdx
	movl	-84(%rbp), %eax
	movl	%eax, (%rdx)
	addl	$1, -8(%rbp)
L49:
	movl	-8(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jl	L52
	leave
	ret
	.comm	buffer,256,64
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	$buffer, -16(%rbp)
	movl	$buffer, %eax
	negq	%rax
	andl	$63, %eax
	addq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	subq	$-128, %rax
	movq	%rax, -40(%rbp)
	movl	$0, -4(%rbp)
	jmp	L54
L55:
	movq	-48(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2ss	-4(%rbp), %xmm1, %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ss	-4(%rbp), %xmm0, %xmm0
	movl	LC0(%rip), %eax
	vmovd	%eax, %xmm2
	vmulss	%xmm2, %xmm0, %xmm0
	vaddss	%xmm0, %xmm1, %xmm3
	vmovd	%xmm3, %eax
	movl	%eax, (%rdx)
	movq	-40(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2ss	-4(%rbp), %xmm1, %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ss	-4(%rbp), %xmm0, %xmm0
	movl	LC1(%rip), %eax
	vmovd	%eax, %xmm4
	vmulss	%xmm4, %xmm0, %xmm0
	vaddss	%xmm0, %xmm1, %xmm5
	vmovd	%xmm5, %eax
	movl	%eax, (%rdx)
	addl	$1, -4(%rbp)
L54:
	cmpl	$15, -4(%rbp)
	jle	L55
	leaq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	$16, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	foo
	movl	$0, -4(%rbp)
	jmp	L56
L59:
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsi2ss	-4(%rbp), %xmm1, %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ss	-4(%rbp), %xmm0, %xmm0
	movl	LC0(%rip), %eax
	vmovd	%eax, %xmm6
	vmulss	%xmm6, %xmm0, %xmm0
	vaddss	%xmm0, %xmm1, %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ss	-4(%rbp), %xmm0, %xmm0
	vaddss	%xmm0, %xmm1, %xmm1
	vxorps	%xmm0, %xmm0, %xmm0
	vcvtsi2ss	-4(%rbp), %xmm0, %xmm0
	movl	LC1(%rip), %eax
	vmovd	%eax, %xmm7
	vmulss	%xmm7, %xmm0, %xmm0
	vaddss	%xmm0, %xmm1, %xmm2
	vmovd	%xmm2, %eax
	movl	%eax, -28(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	vmovd	%eax, %xmm3
	vucomiss	-28(%rbp), %xmm3
	jp	L61
	vmovd	%eax, %xmm4
	vucomiss	-28(%rbp), %xmm4
	je	L62
L61:
	call	abort
L62:
	addl	$1, -4(%rbp)
L56:
	cmpl	$15, -4(%rbp)
	jle	L59
	movl	$0, %eax
	leave
	ret
LC0:
	.long	1093664768
LC1:
	.long	1094713344
