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
	je	L40
	call	abort
L40:
	movzwl	s_c_s+2(%rip), %eax
	cmpw	$13, %ax
	je	L41
	call	abort
L41:
	movzbl	s_c_i(%rip), %eax
	cmpb	$98, %al
	je	L42
	call	abort
L42:
	movl	s_c_i+4(%rip), %eax
	cmpl	$14, %eax
	je	L43
	call	abort
L43:
	movzwl	s_s_i(%rip), %eax
	cmpw	$15, %ax
	je	L44
	call	abort
L44:
	movl	s_s_i+4(%rip), %eax
	cmpl	$16, %eax
	je	L45
	call	abort
L45:
	movzbl	s_c_f(%rip), %eax
	cmpb	$99, %al
	je	L46
	call	abort
L46:
	movl	s_c_f+4(%rip), %eax
	vmovd	%eax, %xmm0
	vucomiss	LC0(%rip), %xmm0
	jp	L83
	vmovd	%eax, %xmm1
	vucomiss	LC0(%rip), %xmm1
	je	L97
L83:
	call	abort
L97:
	movzwl	s_s_f(%rip), %eax
	cmpw	$18, %ax
	je	L49
	call	abort
L49:
	movl	s_s_f+4(%rip), %eax
	vmovd	%eax, %xmm2
	vucomiss	LC1(%rip), %xmm2
	jp	L84
	vmovd	%eax, %xmm3
	vucomiss	LC1(%rip), %xmm3
	je	L98
L84:
	call	abort
L98:
	movzbl	s_c_d(%rip), %eax
	cmpb	$100, %al
	je	L52
	call	abort
L52:
	movq	s_c_d+8(%rip), %rax
	vmovq	%rax, %xmm4
	vucomisd	LC2(%rip), %xmm4
	jp	L85
	vmovq	%rax, %xmm5
	vucomisd	LC2(%rip), %xmm5
	je	L99
L85:
	call	abort
L99:
	movzwl	s_s_d(%rip), %eax
	cmpw	$21, %ax
	je	L55
	call	abort
L55:
	movq	s_s_d+8(%rip), %rax
	vmovq	%rax, %xmm6
	vucomisd	LC3(%rip), %xmm6
	jp	L86
	vmovq	%rax, %xmm7
	vucomisd	LC3(%rip), %xmm7
	je	L100
L86:
	call	abort
L100:
	movl	s_i_d(%rip), %eax
	cmpl	$23, %eax
	je	L58
	call	abort
L58:
	movq	s_i_d+8(%rip), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC4(%rip), %xmm0
	jp	L87
	vmovq	%rax, %xmm1
	vucomisd	LC4(%rip), %xmm1
	je	L101
L87:
	call	abort
L101:
	movl	s_f_d(%rip), %eax
	vmovd	%eax, %xmm2
	vucomiss	LC5(%rip), %xmm2
	jp	L88
	vmovd	%eax, %xmm3
	vucomiss	LC5(%rip), %xmm3
	je	L102
L88:
	call	abort
L102:
	movq	s_f_d+8(%rip), %rax
	vmovq	%rax, %xmm4
	vucomisd	LC6(%rip), %xmm4
	jp	L89
	vmovq	%rax, %xmm5
	vucomisd	LC6(%rip), %xmm5
	je	L103
L89:
	call	abort
L103:
	movzbl	s_c_ld(%rip), %eax
	cmpb	$101, %al
	je	L65
	call	abort
L65:
	fldt	s_c_ld+16(%rip)
	fldt	LC7(%rip)
	fucomip	%st(1), %st
	jp	L111
	fldt	LC7(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L104
	jmp	L90
L111:
	fstp	%st(0)
L90:
	call	abort
L104:
	movzwl	s_s_ld(%rip), %eax
	cmpw	$28, %ax
	je	L68
	call	abort
L68:
	fldt	s_s_ld+16(%rip)
	fldt	LC8(%rip)
	fucomip	%st(1), %st
	jp	L112
	fldt	LC8(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L105
	jmp	L91
L112:
	fstp	%st(0)
L91:
	call	abort
L105:
	movl	s_i_ld(%rip), %eax
	cmpl	$30, %eax
	je	L71
	call	abort
L71:
	fldt	s_i_ld+16(%rip)
	fldt	LC9(%rip)
	fucomip	%st(1), %st
	jp	L113
	fldt	LC9(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L106
	jmp	L92
L113:
	fstp	%st(0)
L92:
	call	abort
L106:
	movl	s_f_ld(%rip), %eax
	vmovd	%eax, %xmm6
	vucomiss	LC10(%rip), %xmm6
	jp	L93
	vmovd	%eax, %xmm7
	vucomiss	LC10(%rip), %xmm7
	je	L107
L93:
	call	abort
L107:
	fldt	s_f_ld+16(%rip)
	fldt	LC11(%rip)
	fucomip	%st(1), %st
	jp	L114
	fldt	LC11(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L108
	jmp	L94
L114:
	fstp	%st(0)
L94:
	call	abort
L108:
	movq	s_d_ld(%rip), %rax
	vmovq	%rax, %xmm0
	vucomisd	LC12(%rip), %xmm0
	jp	L95
	vmovq	%rax, %xmm1
	vucomisd	LC12(%rip), %xmm1
	je	L109
L95:
	call	abort
L109:
	fldt	s_d_ld+16(%rip)
	fldt	LC13(%rip)
	fucomip	%st(1), %st
	jp	L115
	fldt	LC13(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L110
	jmp	L96
L115:
	fstp	%st(0)
L96:
	call	abort
L110:
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
