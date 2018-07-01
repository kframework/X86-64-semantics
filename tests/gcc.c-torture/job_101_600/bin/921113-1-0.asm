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
	jp	L11
	movl	LC0(%rip), %eax
	vmovd	%eax, %xmm3
	vucomiss	-4(%rbp), %xmm3
	jne	L11
	movl	LC0(%rip), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	jp	L11
	movl	LC0(%rip), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	je	L14
L11:
	call	abort
L14:
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
	jp	L16
	movl	LC1(%rip), %eax
	vmovd	%eax, %xmm3
	vucomiss	-4(%rbp), %xmm3
	jne	L16
	movl	LC1(%rip), %eax
	vmovd	%eax, %xmm4
	vucomiss	-8(%rbp), %xmm4
	jp	L16
	movl	LC1(%rip), %eax
	vmovd	%eax, %xmm5
	vucomiss	-8(%rbp), %xmm5
	je	L19
L16:
	call	abort
L19:
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
	jb	L21
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
	jb	L21
	movl	-65560(%rbp), %edx
	movl	-4(%rbp), %eax
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	call	w
	movq	-65576(%rbp), %rdx
	movl	LC1(%rip), %eax
	movl	%eax, (%rdx)
L21:
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
