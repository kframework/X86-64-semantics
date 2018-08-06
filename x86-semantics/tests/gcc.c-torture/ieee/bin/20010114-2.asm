rintf:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	%xmm0, -4(%rbp)
	movl	-4(%rbp), %eax
	vmovss	LC0(%rip), %xmm0
	vmovd	%eax, %xmm1
	vandps	%xmm0, %xmm1, %xmm1
	vmovaps	%xmm1, %xmm0
	movl	LC1(%rip), %eax
	vmovd	%eax, %xmm2
	vucomiss	%xmm0, %xmm2
	jbe	L2
	movl	-4(%rbp), %eax
	movl	LC2(%rip), %edx
	vmovd	%eax, %xmm3
	vmovd	%edx, %xmm4
	vucomiss	%xmm4, %xmm3
	jbe	L11
	movl	LC1(%rip), %eax
	movl	-4(%rbp), %edx
	vmovd	%edx, %xmm6
	vmovd	%eax, %xmm7
	vaddss	%xmm7, %xmm6, %xmm5
	vmovd	%xmm5, %eax
	movl	%eax, -4(%rbp)
	movl	LC1(%rip), %edx
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm3
	vmovd	%edx, %xmm4
	vsubss	%xmm4, %xmm3, %xmm2
	vmovd	%xmm2, %eax
	movl	%eax, -4(%rbp)
	jmp	L2
L11:
	movl	LC2(%rip), %eax
	vmovd	%eax, %xmm5
	vucomiss	-4(%rbp), %xmm5
	jbe	L2
	movl	LC1(%rip), %eax
	vmovd	%eax, %xmm7
	vsubss	-4(%rbp), %xmm7, %xmm6
	vmovd	%xmm6, %eax
	movl	%eax, -4(%rbp)
	movl	LC1(%rip), %edx
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vsubss	%xmm3, %xmm2, %xmm1
	vmovd	%xmm1, %eax
	vmovss	LC3(%rip), %xmm0
	xorl	$-2147483648, %eax
	movl	%eax, -4(%rbp)
L2:
	movl	-4(%rbp), %eax
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovss	LC4(%rip), %xmm0
	call	rintf
	vucomiss	LC5(%rip), %xmm0
	jp	L15
	vucomiss	LC5(%rip), %xmm0
	je	L16
L15:
	call	abort
L16:
	movl	$0, %edi
	call	exit
TWO23.2243:
	.long	1258291200
LC0:
	.long	2147483647
	.long	0
	.long	0
	.long	0
LC1:
	.long	1258291200
LC2:
	.long	0
LC3:
	.long	2147483648
	.long	0
	.long	0
	.long	0
LC4:
	.long	3217031168
LC5:
	.long	3221225472
