dnan:
	.long	0
	.long	2146959360
x:
	.long	0
	.long	1072693248
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movabsq	$9221120237041090560, %rax
	movabsq	$9221120237041090560, %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm0
	jp	L2
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jne	L2
	call	link_error
L2:
	movabsq	$9221120237041090560, %rax
	movq	x(%rip), %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jp	L18
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	je	L24
L18:
	movabsq	$4607182418800017408, %rax
	movq	%rax, x(%rip)
	jmp	L6
L24:
	call	link_error
L6:
	movabsq	$9221120237041090560, %rdx
	movq	x(%rip), %rax
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm0
	jbe	L7
	call	link_error
L7:
	movabsq	$9221120237041090560, %rax
	movq	x(%rip), %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jbe	L9
	call	link_error
L9:
	movabsq	$9221120237041090560, %rdx
	movq	x(%rip), %rax
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jb	L11
	call	link_error
L11:
	movabsq	$9221120237041090560, %rax
	movq	x(%rip), %rdx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	jb	L13
	call	link_error
L13:
	movabsq	$9221120237041090560, %rax
	movq	x(%rip), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm0
	jp	L15
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jne	L15
	call	link_error
L15:
	movl	$0, %edi
	call	exit
link_error:
	pushq	%rbp
	movq	%rsp, %rbp
	call	abort
