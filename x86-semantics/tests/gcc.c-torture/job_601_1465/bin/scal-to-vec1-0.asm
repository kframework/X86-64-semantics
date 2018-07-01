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
	jmp	L10
L12:
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
	je	L11
	call	abort
L11:
	addl	$1, -20(%rbp)
L10:
	cmpl	$7, -20(%rbp)
	jle	L12
	vmovdqa	-208(%rbp), %xmm1
	vmovdqa	LC3(%rip), %xmm0
	vpsubw	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -24(%rbp)
	jmp	L13
L15:
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
	je	L14
	call	abort
L14:
	addl	$1, -24(%rbp)
L13:
	cmpl	$7, -24(%rbp)
	jle	L15
	vmovdqa	-208(%rbp), %xmm0
	vpsllw	$1, %xmm0, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -28(%rbp)
	jmp	L16
L18:
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
	je	L17
	call	abort
L17:
	addl	$1, -28(%rbp)
L16:
	cmpl	$7, -28(%rbp)
	jle	L18
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
	jmp	L19
L21:
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
	je	L20
	call	abort
L20:
	addl	$1, -32(%rbp)
L19:
	cmpl	$7, -32(%rbp)
	jle	L21
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
	jmp	L22
L24:
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
	je	L23
	call	abort
L23:
	addl	$1, -36(%rbp)
L22:
	cmpl	$7, -36(%rbp)
	jle	L24
	vmovdqa	-208(%rbp), %xmm1
	vmovdqa	LC3(%rip), %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -40(%rbp)
	jmp	L25
L27:
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
	je	L26
	call	abort
L26:
	addl	$1, -40(%rbp)
L25:
	cmpl	$7, -40(%rbp)
	jle	L27
	vmovdqa	-208(%rbp), %xmm1
	vmovdqa	LC3(%rip), %xmm0
	vpand	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -44(%rbp)
	jmp	L28
L30:
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
	je	L29
	call	abort
L29:
	addl	$1, -44(%rbp)
L28:
	cmpl	$7, -44(%rbp)
	jle	L30
	vmovdqa	-208(%rbp), %xmm1
	vmovdqa	LC3(%rip), %xmm0
	vpor	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -48(%rbp)
	jmp	L31
L33:
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
	je	L32
	call	abort
L32:
	addl	$1, -48(%rbp)
L31:
	cmpl	$7, -48(%rbp)
	jle	L33
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
	jmp	L34
L36:
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
	je	L35
	call	abort
L35:
	addl	$1, -52(%rbp)
L34:
	cmpl	$7, -52(%rbp)
	jle	L36
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
	jmp	L37
L39:
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
	je	L38
	call	abort
L38:
	addl	$1, -56(%rbp)
L37:
	cmpl	$7, -56(%rbp)
	jle	L39
	vmovdqa	-208(%rbp), %xmm1
	vmovdqa	LC3(%rip), %xmm0
	vpaddw	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -60(%rbp)
	jmp	L40
L42:
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
	je	L41
	call	abort
L41:
	addl	$1, -60(%rbp)
L40:
	cmpl	$7, -60(%rbp)
	jle	L42
	vmovdqa	-208(%rbp), %xmm0
	vmovdqa	LC3(%rip), %xmm1
	vpsubw	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -64(%rbp)
	jmp	L43
L45:
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
	je	L44
	call	abort
L44:
	addl	$1, -64(%rbp)
L43:
	cmpl	$7, -64(%rbp)
	jle	L45
	vmovdqa	-208(%rbp), %xmm0
	vpsllw	$1, %xmm0, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -68(%rbp)
	jmp	L46
L48:
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
	je	L47
	call	abort
L47:
	addl	$1, -68(%rbp)
L46:
	cmpl	$7, -68(%rbp)
	jle	L48
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
	jmp	L49
L51:
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
	je	L50
	call	abort
L50:
	addl	$1, -72(%rbp)
L49:
	cmpl	$7, -72(%rbp)
	jle	L51
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
	jmp	L52
L54:
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
	je	L53
	call	abort
L53:
	addl	$1, -76(%rbp)
L52:
	cmpl	$7, -76(%rbp)
	jle	L54
	vmovdqa	-208(%rbp), %xmm1
	vmovdqa	LC3(%rip), %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -80(%rbp)
	jmp	L55
L57:
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
	je	L56
	call	abort
L56:
	addl	$1, -80(%rbp)
L55:
	cmpl	$7, -80(%rbp)
	jle	L57
	vmovdqa	-208(%rbp), %xmm1
	vmovdqa	LC3(%rip), %xmm0
	vpand	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -84(%rbp)
	jmp	L58
L60:
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
	je	L59
	call	abort
L59:
	addl	$1, -84(%rbp)
L58:
	cmpl	$7, -84(%rbp)
	jle	L60
	vmovdqa	-208(%rbp), %xmm1
	vmovdqa	LC3(%rip), %xmm0
	vpor	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, -224(%rbp)
	movl	$0, -88(%rbp)
	jmp	L61
L63:
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
	je	L62
	call	abort
L62:
	addl	$1, -88(%rbp)
L61:
	cmpl	$7, -88(%rbp)
	jle	L63
	vmovaps	LC4(%rip), %xmm0
	vaddps	-176(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -240(%rbp)
	vmovaps	LC4(%rip), %xmm0
	vaddps	-176(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -256(%rbp)
	movl	$0, -92(%rbp)
	jmp	L64
L67:
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
	jp	L129
	vmovd	%eax, %xmm7
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm7
	je	L145
L129:
	call	abort
L145:
	addl	$1, -92(%rbp)
L64:
	cmpl	$3, -92(%rbp)
	jle	L67
	vmovaps	LC4(%rip), %xmm0
	vsubps	-176(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -240(%rbp)
	vmovaps	LC4(%rip), %xmm0
	vsubps	-176(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -256(%rbp)
	movl	$0, -96(%rbp)
	jmp	L68
L71:
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
	jp	L130
	vmovd	%eax, %xmm5
	vmovd	%edx, %xmm6
	vucomiss	%xmm6, %xmm5
	je	L146
L130:
	call	abort
L146:
	addl	$1, -96(%rbp)
L68:
	cmpl	$3, -96(%rbp)
	jle	L71
	vmovaps	-176(%rbp), %xmm0
	vaddps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -240(%rbp)
	vmovaps	-176(%rbp), %xmm0
	vaddps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -256(%rbp)
	movl	$0, -100(%rbp)
	jmp	L72
L75:
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
	jp	L131
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vucomiss	%xmm7, %xmm6
	je	L147
L131:
	call	abort
L147:
	addl	$1, -100(%rbp)
L72:
	cmpl	$3, -100(%rbp)
	jle	L75
	vmovaps	LC4(%rip), %xmm0
	vdivps	-176(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -240(%rbp)
	vmovaps	LC4(%rip), %xmm0
	vdivps	-176(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -256(%rbp)
	movl	$0, -104(%rbp)
	jmp	L76
L79:
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
	jp	L132
	vmovd	%eax, %xmm7
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm7
	je	L148
L132:
	call	abort
L148:
	addl	$1, -104(%rbp)
L76:
	cmpl	$3, -104(%rbp)
	jle	L79
	vmovaps	LC4(%rip), %xmm0
	vaddps	-176(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -240(%rbp)
	vmovaps	LC4(%rip), %xmm0
	vaddps	-176(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -256(%rbp)
	movl	$0, -108(%rbp)
	jmp	L80
L83:
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
	jp	L133
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vucomiss	%xmm3, %xmm2
	je	L149
L133:
	call	abort
L149:
	addl	$1, -108(%rbp)
L80:
	cmpl	$3, -108(%rbp)
	jle	L83
	vmovaps	LC5(%rip), %xmm0
	vaddps	-176(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -240(%rbp)
	vmovaps	LC5(%rip), %xmm0
	vaddps	-176(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -256(%rbp)
	movl	$0, -112(%rbp)
	jmp	L84
L87:
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
	jp	L134
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vucomiss	%xmm7, %xmm6
	je	L150
L134:
	call	abort
L150:
	addl	$1, -112(%rbp)
L84:
	cmpl	$3, -112(%rbp)
	jle	L87
	vmovaps	-176(%rbp), %xmm0
	vaddps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -240(%rbp)
	vmovaps	-176(%rbp), %xmm0
	vaddps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -256(%rbp)
	movl	$0, -116(%rbp)
	jmp	L88
L91:
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
	jp	L135
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm4
	je	L151
L135:
	call	abort
L151:
	addl	$1, -116(%rbp)
L88:
	cmpl	$3, -116(%rbp)
	jle	L91
	vmovaps	-176(%rbp), %xmm0
	vmovaps	LC4(%rip), %xmm1
	vdivps	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, -240(%rbp)
	vmovaps	-176(%rbp), %xmm0
	vmovaps	LC4(%rip), %xmm1
	vdivps	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, -256(%rbp)
	movl	$0, -120(%rbp)
	jmp	L92
L95:
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
	jp	L136
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vucomiss	%xmm3, %xmm2
	je	L152
L136:
	call	abort
L152:
	addl	$1, -120(%rbp)
L92:
	cmpl	$3, -120(%rbp)
	jle	L95
	vmovapd	LC6(%rip), %xmm0
	vaddpd	-192(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -272(%rbp)
	vmovapd	LC6(%rip), %xmm0
	vaddpd	-192(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -288(%rbp)
	movl	$0, -124(%rbp)
	jmp	L96
L99:
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
	jp	L137
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	je	L153
L137:
	call	abort
L153:
	addl	$1, -124(%rbp)
L96:
	cmpl	$1, -124(%rbp)
	jle	L99
	vmovapd	LC6(%rip), %xmm0
	vsubpd	-192(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -272(%rbp)
	vmovapd	LC6(%rip), %xmm0
	vsubpd	-192(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -288(%rbp)
	movl	$0, -128(%rbp)
	jmp	L100
L103:
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
	jp	L138
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	je	L154
L138:
	call	abort
L154:
	addl	$1, -128(%rbp)
L100:
	cmpl	$1, -128(%rbp)
	jle	L103
	vmovapd	-192(%rbp), %xmm0
	vaddpd	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -272(%rbp)
	vmovapd	-192(%rbp), %xmm0
	vaddpd	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -288(%rbp)
	movl	$0, -132(%rbp)
	jmp	L104
L107:
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
	jp	L139
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	je	L155
L139:
	call	abort
L155:
	addl	$1, -132(%rbp)
L104:
	cmpl	$1, -132(%rbp)
	jle	L107
	vmovapd	LC6(%rip), %xmm0
	vdivpd	-192(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -272(%rbp)
	vmovapd	LC6(%rip), %xmm0
	vdivpd	-192(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -288(%rbp)
	movl	$0, -136(%rbp)
	jmp	L108
L111:
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
	jp	L140
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	je	L156
L140:
	call	abort
L156:
	addl	$1, -136(%rbp)
L108:
	cmpl	$1, -136(%rbp)
	jle	L111
	vmovapd	LC6(%rip), %xmm0
	vaddpd	-192(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -272(%rbp)
	vmovapd	LC6(%rip), %xmm0
	vaddpd	-192(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -288(%rbp)
	movl	$0, -140(%rbp)
	jmp	L112
L115:
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
	jp	L141
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	je	L157
L141:
	call	abort
L157:
	addl	$1, -140(%rbp)
L112:
	cmpl	$1, -140(%rbp)
	jle	L115
	vmovapd	LC7(%rip), %xmm0
	vaddpd	-192(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -272(%rbp)
	vmovapd	LC7(%rip), %xmm0
	vaddpd	-192(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -288(%rbp)
	movl	$0, -144(%rbp)
	jmp	L116
L119:
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
	jp	L142
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	je	L158
L142:
	call	abort
L158:
	addl	$1, -144(%rbp)
L116:
	cmpl	$1, -144(%rbp)
	jle	L119
	vmovapd	-192(%rbp), %xmm0
	vaddpd	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -272(%rbp)
	vmovapd	-192(%rbp), %xmm0
	vaddpd	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -288(%rbp)
	movl	$0, -148(%rbp)
	jmp	L120
L123:
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
	jp	L143
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	je	L159
L143:
	call	abort
L159:
	addl	$1, -148(%rbp)
L120:
	cmpl	$1, -148(%rbp)
	jle	L123
	vmovapd	-192(%rbp), %xmm0
	vmovapd	LC6(%rip), %xmm1
	vdivpd	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, -272(%rbp)
	vmovapd	-192(%rbp), %xmm0
	vmovapd	LC6(%rip), %xmm1
	vdivpd	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, -288(%rbp)
	movl	$0, -152(%rbp)
	jmp	L124
L127:
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
	jp	L144
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	je	L160
L144:
	call	abort
L160:
	addl	$1, -152(%rbp)
L124:
	cmpl	$1, -152(%rbp)
	jle	L127
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
