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
s_c_s:
	.byte	97
	.zero	1
	.value	13
s_c_i:
	.byte	98
	.zero	3
	.long	14
s_s_i:
	.value	15
	.zero	2
	.long	16
s_c_f:
	.byte	99
	.zero	3
	.long	1099431936
s_s_f:
	.value	18
	.zero	2
	.long	1100480512
s_c_d:
	.byte	100
	.zero	7
	.long	0
	.long	1077149696
s_s_d:
	.value	21
	.zero	6
	.long	0
	.long	1077280768
s_i_d:
	.long	23
	.zero	4
	.long	0
	.long	1077411840
s_f_d:
	.long	1103626240
	.zero	4
	.long	0
	.long	1077542912
s_c_ld:
	.byte	101
	.zero	15
	.long	0
	.long	3623878656
	.long	16387
	.long	0
s_s_ld:
	.value	28
	.zero	14
	.long	0
	.long	3892314112
	.long	16387
	.long	0
s_i_ld:
	.long	30
	.zero	12
	.long	0
	.long	4160749568
	.long	16387
	.long	0
s_f_ld:
	.long	1107296256
	.zero	12
	.long	0
	.long	2214592512
	.long	16388
	.long	0
s_d_ld:
	.long	0
	.long	1078001664
	.zero	8
	.long	0
	.long	2348810240
	.long	16388
	.long	0
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	s_c_s(%rip), %eax
	cmpb	$97, %al
	je	L10
	call	abort
L10:
	movzwl	s_c_s+2(%rip), %eax
	cmpw	$13, %ax
	je	L11
	call	abort
L11:
	movzbl	s_c_i(%rip), %eax
	cmpb	$98, %al
	je	L12
	call	abort
L12:
	movl	s_c_i+4(%rip), %eax
	cmpl	$14, %eax
	je	L13
	call	abort
L13:
	movzwl	s_s_i(%rip), %eax
	cmpw	$15, %ax
	je	L14
	call	abort
L14:
	movl	s_s_i+4(%rip), %eax
	cmpl	$16, %eax
	je	L15
	call	abort
L15:
	movzbl	s_c_f(%rip), %eax
	cmpb	$99, %al
	je	L16
	call	abort
L16:
	movl	s_c_f+4(%rip), %eax
	vmovd	%eax, %xmm0
	vucomiss	LC0(%rip), %xmm0
	jp	L53
	vmovd	%eax, %xmm1
	vucomiss	LC0(%rip), %xmm1
	je	L67
L53:
	call	abort
L67:
	movzwl	s_s_f(%rip), %eax
	cmpw	$18, %ax
	je	L19
	call	abort
L19:
	movl	s_s_f+4(%rip), %eax
	vmovd	%eax, %xmm2
	vucomiss	LC1(%rip), %xmm2
	jp	L54
	vmovd	%eax, %xmm3
	vucomiss	LC1(%rip), %xmm3
	je	L68
L54:
	call	abort
L68:
	movzbl	s_c_d(%rip), %eax
	cmpb	$100, %al
	je	L22
	call	abort
L22:
	movq	s_c_d+8(%rip), %rax
	vmovq	%rax, %xmm4
	vucomisd	LC2(%rip), %xmm4
	jp	L55
	vmovq	%rax, %xmm5
	vucomisd	LC2(%rip), %xmm5
	je	L69
L55:
	call	abort
L69:
	movzwl	s_s_d(%rip), %eax
	cmpw	$21, %ax
	je	L25
	call	abort
L25:
	movq	s_s_d+8(%rip), %rax
	vmovq	%rax, %xmm6
	vucomisd	LC3(%rip), %xmm6
	jp	L56
	vmovq	%rax, %xmm7
	vucomisd	LC3(%rip), %xmm7
	je	L70
L56:
	call	abort
L70:
	movl	s_i_d(%rip), %eax
	cmpl	$23, %eax
	je	L28
	call	abort
L28:
	movq	s_i_d+8(%rip), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC4(%rip), %xmm0
	jp	L57
	vmovq	%rax, %xmm1
	vucomisd	LC4(%rip), %xmm1
	je	L71
L57:
	call	abort
L71:
	movl	s_f_d(%rip), %eax
	vmovd	%eax, %xmm2
	vucomiss	LC5(%rip), %xmm2
	jp	L58
	vmovd	%eax, %xmm3
	vucomiss	LC5(%rip), %xmm3
	je	L72
L58:
	call	abort
L72:
	movq	s_f_d+8(%rip), %rax
	vmovq	%rax, %xmm4
	vucomisd	LC6(%rip), %xmm4
	jp	L59
	vmovq	%rax, %xmm5
	vucomisd	LC6(%rip), %xmm5
	je	L73
L59:
	call	abort
L73:
	movzbl	s_c_ld(%rip), %eax
	cmpb	$101, %al
	je	L35
	call	abort
L35:
	fldt	s_c_ld+16(%rip)
	fldt	LC7(%rip)
	fucomip	%st(1), %st
	jp	L81
	fldt	LC7(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L74
	jmp	L60
L81:
	fstp	%st(0)
L60:
	call	abort
L74:
	movzwl	s_s_ld(%rip), %eax
	cmpw	$28, %ax
	je	L38
	call	abort
L38:
	fldt	s_s_ld+16(%rip)
	fldt	LC8(%rip)
	fucomip	%st(1), %st
	jp	L82
	fldt	LC8(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L75
	jmp	L61
L82:
	fstp	%st(0)
L61:
	call	abort
L75:
	movl	s_i_ld(%rip), %eax
	cmpl	$30, %eax
	je	L41
	call	abort
L41:
	fldt	s_i_ld+16(%rip)
	fldt	LC9(%rip)
	fucomip	%st(1), %st
	jp	L83
	fldt	LC9(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L76
	jmp	L62
L83:
	fstp	%st(0)
L62:
	call	abort
L76:
	movl	s_f_ld(%rip), %eax
	vmovd	%eax, %xmm6
	vucomiss	LC10(%rip), %xmm6
	jp	L63
	vmovd	%eax, %xmm7
	vucomiss	LC10(%rip), %xmm7
	je	L77
L63:
	call	abort
L77:
	fldt	s_f_ld+16(%rip)
	fldt	LC11(%rip)
	fucomip	%st(1), %st
	jp	L84
	fldt	LC11(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L78
	jmp	L64
L84:
	fstp	%st(0)
L64:
	call	abort
L78:
	movq	s_d_ld(%rip), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC12(%rip), %xmm0
	jp	L65
	vmovq	%rax, %xmm1
	vucomisd	LC12(%rip), %xmm1
	je	L79
L65:
	call	abort
L79:
	fldt	s_d_ld+16(%rip)
	fldt	LC13(%rip)
	fucomip	%st(1), %st
	jp	L85
	fldt	LC13(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L80
	jmp	L66
L85:
	fstp	%st(0)
L66:
	call	abort
L80:
	movl	$0, %eax
	popq	%rbp
	ret
LC0:
	.long	1099431936
LC1:
	.long	1100480512
LC2:
	.long	0
	.long	1077149696
LC3:
	.long	0
	.long	1077280768
LC4:
	.long	0
	.long	1077411840
LC5:
	.long	1103626240
LC6:
	.long	0
	.long	1077542912
LC7:
	.long	0
	.long	3623878656
	.long	16387
	.long	0
LC8:
	.long	0
	.long	3892314112
	.long	16387
	.long	0
LC9:
	.long	0
	.long	4160749568
	.long	16387
	.long	0
LC10:
	.long	1107296256
LC11:
	.long	0
	.long	2214592512
	.long	16388
	.long	0
LC12:
	.long	0
	.long	1078001664
LC13:
	.long	0
	.long	2348810240
	.long	16388
	.long	0
