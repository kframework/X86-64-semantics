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
i:
	.value	150
	.value	100
	.value	150
	.value	200
	.value	0
	.value	0
	.value	0
	.value	0
j:
	.value	10
	.value	13
	.value	20
	.value	30
	.value	1
	.value	1
	.value	1
	.value	1
	.comm	k,16,16
	.comm	res,16,16
verify:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	%r9d, -24(%rbp)
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	L40
	movl	-8(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	L40
	movl	-12(%rbp), %eax
	cmpl	16(%rbp), %eax
	jne	L40
	movl	-16(%rbp), %eax
	cmpl	24(%rbp), %eax
	je	L39
L40:
	call	abort
L39:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$8, %rsp
	vmovdqa	i(%rip), %xmm1
	vmovdqa	j(%rip), %xmm0
	vpaddw	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, k(%rip)
	vmovdqa	k(%rip), %xmm0
	vmovaps	%xmm0, res(%rip)
	movzwl	res+6(%rip), %eax
	movswl	%ax, %ecx
	movzwl	res+4(%rip), %eax
	movswl	%ax, %edx
	movzwl	res+2(%rip), %eax
	movswl	%ax, %esi
	movzwl	res(%rip), %eax
	cwtl
	pushq	$230
	pushq	$170
	movl	$113, %r9d
	movl	$160, %r8d
	movl	%eax, %edi
	call	verify
	addq	$16, %rsp
	vmovdqa	i(%rip), %xmm1
	vmovdqa	j(%rip), %xmm0
	vpmullw	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, k(%rip)
	vmovdqa	k(%rip), %xmm0
	vmovaps	%xmm0, res(%rip)
	movzwl	res+6(%rip), %eax
	movswl	%ax, %ecx
	movzwl	res+4(%rip), %eax
	movswl	%ax, %edx
	movzwl	res+2(%rip), %eax
	movswl	%ax, %esi
	movzwl	res(%rip), %eax
	cwtl
	pushq	$6000
	pushq	$3000
	movl	$1300, %r9d
	movl	$1500, %r8d
	movl	%eax, %edi
	call	verify
	addq	$16, %rsp
	vmovdqa	i(%rip), %xmm1
	vmovdqa	j(%rip), %xmm0
	vpextrw	$0, %xmm1, %eax
	vpextrw	$0, %xmm0, %ebx
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%bx
	movl	%eax, %r11d
	vpextrw	$1, %xmm1, %eax
	vpextrw	$1, %xmm0, %ebx
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%bx
	movl	%eax, %edi
	vpextrw	$2, %xmm1, %eax
	vpextrw	$2, %xmm0, %ebx
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%bx
	movl	%eax, %r10d
	vpextrw	$3, %xmm1, %eax
	vpextrw	$3, %xmm0, %ebx
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%bx
	movl	%eax, %esi
	vpextrw	$4, %xmm1, %eax
	vpextrw	$4, %xmm0, %ebx
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%bx
	movl	%eax, %r9d
	vpextrw	$5, %xmm1, %eax
	vpextrw	$5, %xmm0, %ebx
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%bx
	movl	%eax, %ecx
	vpextrw	$6, %xmm1, %eax
	vpextrw	$6, %xmm0, %ebx
	movl	%eax, %edx
	sarw	$15, %dx
	idivw	%bx
	movl	%eax, %r8d
	vpextrw	$7, %xmm1, %eax
	vpextrw	$7, %xmm0, %ebx
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
	vmovaps	%xmm0, k(%rip)
	vmovdqa	k(%rip), %xmm0
	vmovaps	%xmm0, res(%rip)
	movzwl	res+6(%rip), %eax
	movswl	%ax, %ecx
	movzwl	res+4(%rip), %eax
	movswl	%ax, %edx
	movzwl	res+2(%rip), %eax
	movswl	%ax, %esi
	movzwl	res(%rip), %eax
	cwtl
	pushq	$6
	pushq	$7
	movl	$7, %r9d
	movl	$15, %r8d
	movl	%eax, %edi
	call	verify
	addq	$16, %rsp
	vmovdqa	i(%rip), %xmm1
	vmovdqa	j(%rip), %xmm0
	vpand	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, k(%rip)
	vmovdqa	k(%rip), %xmm0
	vmovaps	%xmm0, res(%rip)
	movzwl	res+6(%rip), %eax
	movswl	%ax, %ecx
	movzwl	res+4(%rip), %eax
	movswl	%ax, %edx
	movzwl	res+2(%rip), %eax
	movswl	%ax, %esi
	movzwl	res(%rip), %eax
	cwtl
	pushq	$8
	pushq	$20
	movl	$4, %r9d
	movl	$2, %r8d
	movl	%eax, %edi
	call	verify
	addq	$16, %rsp
	vmovdqa	i(%rip), %xmm1
	vmovdqa	j(%rip), %xmm0
	vpor	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, k(%rip)
	vmovdqa	k(%rip), %xmm0
	vmovaps	%xmm0, res(%rip)
	movzwl	res+6(%rip), %eax
	movswl	%ax, %ecx
	movzwl	res+4(%rip), %eax
	movswl	%ax, %edx
	movzwl	res+2(%rip), %eax
	movswl	%ax, %esi
	movzwl	res(%rip), %eax
	cwtl
	pushq	$222
	pushq	$150
	movl	$109, %r9d
	movl	$158, %r8d
	movl	%eax, %edi
	call	verify
	addq	$16, %rsp
	vmovdqa	i(%rip), %xmm1
	vmovdqa	j(%rip), %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, k(%rip)
	vmovdqa	k(%rip), %xmm0
	vmovaps	%xmm0, res(%rip)
	movzwl	res+6(%rip), %eax
	movswl	%ax, %ecx
	movzwl	res+4(%rip), %eax
	movswl	%ax, %edx
	movzwl	res+2(%rip), %eax
	movswl	%ax, %esi
	movzwl	res(%rip), %eax
	cwtl
	pushq	$214
	pushq	$130
	movl	$105, %r9d
	movl	$156, %r8d
	movl	%eax, %edi
	call	verify
	addq	$16, %rsp
	vmovdqa	i(%rip), %xmm1
	vpxor	%xmm0, %xmm0, %xmm0
	vpsubw	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, k(%rip)
	vmovdqa	k(%rip), %xmm0
	vmovaps	%xmm0, res(%rip)
	movzwl	res+6(%rip), %eax
	movswl	%ax, %ecx
	movzwl	res+4(%rip), %eax
	movswl	%ax, %edx
	movzwl	res+2(%rip), %eax
	movswl	%ax, %esi
	movzwl	res(%rip), %eax
	cwtl
	pushq	$-200
	pushq	$-150
	movl	$-100, %r9d
	movl	$-150, %r8d
	movl	%eax, %edi
	call	verify
	addq	$16, %rsp
	vmovdqa	i(%rip), %xmm1
	vpcmpeqd	%xmm0, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm0
	vmovaps	%xmm0, k(%rip)
	vmovdqa	k(%rip), %xmm0
	vmovaps	%xmm0, res(%rip)
	movzwl	res+6(%rip), %eax
	movswl	%ax, %ecx
	movzwl	res+4(%rip), %eax
	movswl	%ax, %edx
	movzwl	res+2(%rip), %eax
	movswl	%ax, %esi
	movzwl	res(%rip), %eax
	cwtl
	pushq	$-201
	pushq	$-151
	movl	$-101, %r9d
	movl	$-151, %r8d
	movl	%eax, %edi
	call	verify
	addq	$16, %rsp
	movl	$0, %edi
	call	exit
