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
w:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	popq	%rbp
	ret
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	LC0(%rip), %eax
	vmovd	%eax, %xmm2
	vucomiss	-4(%rbp), %xmm2
	jp	L41
	movl	LC0(%rip), %eax
	vmovd	%eax, %xmm3
	vucomiss	-4(%rbp), %xmm3
	jne	L41
	movl	LC0(%rip), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	jp	L41
	movl	LC0(%rip), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	je	L44
L41:
	call	abort
L44:
	leave
	ret
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	vmovss	%xmm0, -4(%rbp)
	vmovss	%xmm1, -8(%rbp)
	movl	LC1(%rip), %eax
	vmovd	%eax, %xmm2
	vucomiss	-4(%rbp), %xmm2
	jp	L46
	movl	LC1(%rip), %eax
	vmovd	%eax, %xmm3
	vucomiss	-4(%rbp), %xmm3
	jne	L46
	movl	LC1(%rip), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	jp	L46
	movl	LC1(%rip), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	je	L49
L46:
	call	abort
L49:
	leave
	ret
gitter:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$65592, %rsp
	movl	%edi, -65556(%rbp)
	movq	%rsi, -65568(%rbp)
	movq	%rdx, -65576(%rbp)
	movq	%rcx, -65584(%rbp)
	movq	%r8, -65592(%rbp)
	vmovss	%xmm0, -65560(%rbp)
	movq	-65592(%rbp), %rax
	movl	4(%rax), %edx
	movq	-65592(%rbp), %rax
	movl	(%rax), %eax
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	f1
	movq	-65592(%rbp), %rax
	addq	$8, %rax
	movl	4(%rax), %edx
	movq	-65592(%rbp), %rax
	addq	$8, %rax
	movl	(%rax), %eax
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	f2
	movq	-65584(%rbp), %rax
	movl	$0, (%rax)
	movq	-65568(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	LC0(%rip), %eax
	vmovd	%eax, %xmm2
	vucomiss	-4(%rbp), %xmm2
	jb	L51
	movl	-65560(%rbp), %edx
	movl	-4(%rbp), %eax
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	w
	vcvtss2sd	-4(%rbp), %xmm0, %xmm0
	vcvtss2sd	-65560(%rbp), %xmm1, %xmm1
	movabsq	$4602678819172646912, %rax
	vmovq	%rax, %xmm4
	vmulsd	%xmm4, %xmm1, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm5
	vucomisd	%xmm0, %xmm5
	jb	L51
	movl	-65560(%rbp), %edx
	movl	-4(%rbp), %eax
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	w
	movq	-65576(%rbp), %rdx
	movl	LC1(%rip), %eax
	movl	%eax, (%rdx)
L51:
	leave
	ret
	.bss
pos:
	.zero	8
limit:
	.long	0
	.long	0
	.long	1065353216
	.long	1065353216
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-4(%rbp), %rdx
	leaq	-16(%rbp), %rax
	vmovss	LC1(%rip), %xmm0
	movl	$limit, %r8d
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movl	$pos, %esi
	movl	$1, %edi
	call	gitter
	movl	$0, %edi
	call	exit
LC0:
	.long	0
LC1:
	.long	1065353216
