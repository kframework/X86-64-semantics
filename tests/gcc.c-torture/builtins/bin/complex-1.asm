	.file	"complex-1.c"
	.text
	.type	conjf, @function
conjf:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, -32(%rbp)
	movl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	vmovss	.LC0(%rip), %xmm0
	vmovd	%eax, %xmm1
	vxorps	%xmm0, %xmm1, %xmm1
	vmovaps	%xmm1, %xmm0
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	vmovd	%xmm0, %eax
	movl	%edx, -40(%rbp)
	movl	%eax, -36(%rbp)
	movq	-40(%rbp), %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
	.size	conjf, .-conjf
	.type	conj, @function
conj:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovq	%xmm0, %rax
	vmovq	%xmm1, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rax
	movq	%rdx, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovsd	.LC1(%rip), %xmm0
	btcq	$63, %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rax
	movq	%rcx, %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	popq	%rbp
	ret
	.size	conj, .-conj
	.type	conjl, @function
conjl:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, -48(%rbp)
	movl	%edx, -40(%rbp)
	movq	32(%rbp), %rax
	movl	40(%rbp), %edx
	movq	%rax, -32(%rbp)
	movl	%edx, -24(%rbp)
	fldt	-32(%rbp)
	fchs
	movq	-48(%rbp), %rax
	movl	-40(%rbp), %edx
	fstpt	-64(%rbp)
	movq	-64(%rbp), %rcx
	movl	-56(%rbp), %ebx
	movq	%rax, -64(%rbp)
	movl	%edx, -56(%rbp)
	fldt	-64(%rbp)
	movq	%rcx, -64(%rbp)
	movl	%ebx, -56(%rbp)
	fldt	-64(%rbp)
	flds	.LC2(%rip)
	flds	.LC2(%rip)
	fstp	%st(0)
	fstp	%st(0)
	fxch	%st(1)
	popq	%rbx
	popq	%rbp
	ret
	.size	conjl, .-conjl
	.type	crealf, @function
crealf:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, -16(%rbp)
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
	.size	crealf, .-crealf
	.type	creal, @function
creal:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovq	%xmm0, %rax
	vmovq	%xmm1, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rax
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
	.size	creal, .-creal
	.type	creall, @function
creall:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	16(%rbp), %rax
	movl	24(%rbp), %edx
	movq	%rax, -16(%rbp)
	movl	%edx, -8(%rbp)
	fldt	-16(%rbp)
	popq	%rbp
	ret
	.size	creall, .-creall
	.type	cimagf, @function
cimagf:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, -16(%rbp)
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	vmovd	%eax, %xmm0
	popq	%rbp
	ret
	.size	cimagf, .-cimagf
	.type	cimag, @function
cimag:
	pushq	%rbp
	movq	%rsp, %rbp
	vmovq	%xmm0, %rax
	vmovq	%xmm1, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rax
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
	.size	cimag, .-cimag
	.type	cimagl, @function
cimagl:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	32(%rbp), %rax
	movl	40(%rbp), %edx
	movq	%rax, -16(%rbp)
	movl	%edx, -8(%rbp)
	fldt	-16(%rbp)
	popq	%rbp
	ret
	.size	cimagl, .-cimagl
	.comm	inside_main,4,4
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, inside_main(%rip)
	call	main_test
	movl	$0, inside_main(%rip)
	movl	$0, %eax
	popq	%rbp
	ret
	.size	main, .-main
	.globl	link_error
	.type	link_error, @function
link_error:
	pushq	%rbp
	movq	%rsp, %rbp
	call	abort
	.size	link_error, .-link_error
	.section	.rodata
	.align 4
.LC3:
	.long	1065353216
	.long	1073741824
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.long	0
	.long	1073741824
	.align 16
.LC5:
	.long	0
	.long	2147483648
	.long	16383
	.long	0
	.long	0
	.long	2147483648
	.long	16384
	.long	0
	.text
	.globl	main_test
	.type	main_test, @function
main_test:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$136, %rsp
	movl	.LC3(%rip), %eax
	movl	%eax, -72(%rbp)
	movl	.LC3+4(%rip), %eax
	movl	%eax, -68(%rbp)
	movq	.LC4(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	.LC4+8(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	.LC5(%rip), %rax
	movl	.LC5+8(%rip), %edx
	movq	%rax, -48(%rbp)
	movl	%edx, -40(%rbp)
	movq	.LC5+16(%rip), %rax
	movl	.LC5+24(%rip), %edx
	movq	%rax, -32(%rbp)
	movl	%edx, -24(%rbp)
	movl	-72(%rbp), %edx
	movl	-68(%rbp), %eax
	movl	%edx, -88(%rbp)
	movl	%eax, -84(%rbp)
	movq	-88(%rbp), %rax
	vmovq	%rax, %xmm0
	call	conjf
	vmovq	%xmm0, %rax
	movq	%rax, -96(%rbp)
	movl	-96(%rbp), %edx
	movl	-92(%rbp), %eax
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	movl	.LC6(%rip), %eax
	vmovd	%eax, %xmm3
	vucomiss	%xmm3, %xmm1
	setp	%dl
	movl	$1, %ecx
	movl	.LC6(%rip), %eax
	vmovd	%eax, %xmm4
	vucomiss	%xmm4, %xmm1
	cmovne	%ecx, %edx
	vucomiss	.LC7(%rip), %xmm0
	setp	%al
	movl	$1, %ecx
	vucomiss	.LC7(%rip), %xmm0
	cmovne	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	jne	.L23
	call	abort
.L23:
	movl	-72(%rbp), %edx
	movl	-68(%rbp), %eax
	vmovd	%edx, %xmm0
	vmovd	%eax, %xmm2
	vmovss	.LC0(%rip), %xmm1
	vxorps	%xmm1, %xmm2, %xmm2
	vmovd	%xmm2, %eax
	movl	.LC6(%rip), %edx
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm0
	setp	%cl
	movl	$1, %esi
	movl	.LC6(%rip), %edx
	vmovd	%edx, %xmm6
	vucomiss	%xmm6, %xmm0
	cmove	%ecx, %esi
	movl	%esi, %edx
	vmovd	%eax, %xmm7
	vucomiss	.LC7(%rip), %xmm7
	setp	%cl
	movl	$1, %esi
	vmovd	%eax, %xmm3
	vucomiss	.LC7(%rip), %xmm3
	movl	%esi, %eax
	cmove	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	jne	.L24
	call	abort
.L24:
	movq	.LC3(%rip), %rax
	vmovq	%rax, %xmm0
	call	conjf
	vmovq	%xmm0, %rax
	movq	%rax, -104(%rbp)
	movl	-104(%rbp), %edx
	movl	-100(%rbp), %eax
	vmovd	%edx, %xmm1
	vmovd	%eax, %xmm0
	movl	.LC6(%rip), %eax
	vmovd	%eax, %xmm4
	vucomiss	%xmm4, %xmm1
	setp	%dl
	movl	$1, %ecx
	movl	.LC6(%rip), %eax
	vmovd	%eax, %xmm5
	vucomiss	%xmm5, %xmm1
	cmovne	%ecx, %edx
	vucomiss	.LC7(%rip), %xmm0
	setp	%al
	movl	$1, %ecx
	vucomiss	.LC7(%rip), %xmm0
	cmovne	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	jne	.L68
	call	link_error
.L68:
	movl	-72(%rbp), %edx
	movl	-68(%rbp), %eax
	movl	%edx, -112(%rbp)
	movl	%eax, -108(%rbp)
	movq	-112(%rbp), %rax
	vmovq	%rax, %xmm0
	call	crealf
	movl	.LC6(%rip), %eax
	vmovd	%eax, %xmm6
	vucomiss	%xmm6, %xmm0
	jp	.L69
	movl	.LC6(%rip), %eax
	vmovd	%eax, %xmm7
	vucomiss	%xmm7, %xmm0
	je	.L94
.L69:
	call	abort
.L94:
	movl	-72(%rbp), %eax
	movl	.LC6(%rip), %edx
	vmovd	%eax, %xmm3
	vmovd	%edx, %xmm4
	vucomiss	%xmm4, %xmm3
	jp	.L70
	movl	.LC6(%rip), %edx
	vmovd	%eax, %xmm5
	vmovd	%edx, %xmm6
	vucomiss	%xmm6, %xmm5
	je	.L95
.L70:
	call	abort
.L95:
	movq	.LC3(%rip), %rax
	vmovq	%rax, %xmm0
	call	crealf
	movl	.LC6(%rip), %eax
	vmovd	%eax, %xmm7
	vucomiss	%xmm7, %xmm0
	jp	.L71
	movl	.LC6(%rip), %eax
	vmovd	%eax, %xmm2
	vucomiss	%xmm2, %xmm0
	jne	.L71
	jmp	.L72
.L71:
	call	link_error
.L72:
	movl	-72(%rbp), %edx
	movl	-68(%rbp), %eax
	movl	%edx, -120(%rbp)
	movl	%eax, -116(%rbp)
	movq	-120(%rbp), %rax
	vmovq	%rax, %xmm0
	call	cimagf
	vucomiss	.LC8(%rip), %xmm0
	jp	.L73
	vucomiss	.LC8(%rip), %xmm0
	je	.L96
.L73:
	call	abort
.L96:
	movl	-68(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	.LC8(%rip), %xmm3
	jp	.L74
	vmovd	%eax, %xmm4
	vucomiss	.LC8(%rip), %xmm4
	je	.L97
.L74:
	call	abort
.L97:
	movq	.LC3(%rip), %rax
	vmovq	%rax, %xmm0
	call	cimagf
	vucomiss	.LC8(%rip), %xmm0
	jp	.L75
	vucomiss	.LC8(%rip), %xmm0
	jne	.L75
	jmp	.L76
.L75:
	call	link_error
.L76:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	vmovq	%rdx, %xmm0
	vmovq	%rax, %xmm1
	call	conj
	vmovq	%xmm0, %rax
	vmovq	%xmm1, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rax
	movabsq	$4607182418800017408, %rcx
	vmovq	%rdx, %xmm5
	vmovq	%rcx, %xmm6
	vucomisd	%xmm6, %xmm5
	setp	%sil
	movl	$1, %edi
	movabsq	$4607182418800017408, %rcx
	vmovq	%rdx, %xmm7
	vmovq	%rcx, %xmm2
	vucomisd	%xmm2, %xmm7
	cmove	%esi, %edi
	movl	%edi, %edx
	vmovq	%rax, %xmm3
	vucomisd	.LC10(%rip), %xmm3
	setp	%cl
	movl	$1, %esi
	vmovq	%rax, %xmm4
	vucomisd	.LC10(%rip), %xmm4
	movl	%esi, %eax
	cmove	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	jne	.L38
	call	abort
.L38:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	vmovsd	.LC1(%rip), %xmm0
	btcq	$63, %rax
	movabsq	$4607182418800017408, %rcx
	vmovq	%rdx, %xmm5
	vmovq	%rcx, %xmm6
	vucomisd	%xmm6, %xmm5
	setp	%sil
	movl	$1, %edi
	movabsq	$4607182418800017408, %rcx
	vmovq	%rdx, %xmm7
	vmovq	%rcx, %xmm2
	vucomisd	%xmm2, %xmm7
	cmove	%esi, %edi
	movl	%edi, %edx
	vmovq	%rax, %xmm3
	vucomisd	.LC10(%rip), %xmm3
	setp	%cl
	movl	$1, %esi
	vmovq	%rax, %xmm4
	vucomisd	.LC10(%rip), %xmm4
	movl	%esi, %eax
	cmove	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	jne	.L39
	call	abort
.L39:
	movq	.LC4(%rip), %rax
	movq	.LC4+8(%rip), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	call	conj
	vmovq	%xmm0, %rax
	vmovq	%xmm1, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rax
	movabsq	$4607182418800017408, %rcx
	vmovq	%rdx, %xmm5
	vmovq	%rcx, %xmm6
	vucomisd	%xmm6, %xmm5
	setp	%sil
	movl	$1, %edi
	movabsq	$4607182418800017408, %rcx
	vmovq	%rdx, %xmm7
	vmovq	%rcx, %xmm2
	vucomisd	%xmm2, %xmm7
	cmove	%esi, %edi
	movl	%edi, %edx
	vmovq	%rax, %xmm3
	vucomisd	.LC10(%rip), %xmm3
	setp	%cl
	movl	$1, %esi
	vmovq	%rax, %xmm4
	vucomisd	.LC10(%rip), %xmm4
	movl	%esi, %eax
	cmove	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	jne	.L77
	call	link_error
.L77:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	vmovq	%rdx, %xmm0
	vmovq	%rax, %xmm1
	call	creal
	vmovq	%xmm0, %rax
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm5
	vmovq	%rdx, %xmm6
	vucomisd	%xmm6, %xmm5
	jp	.L78
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm2
	vucomisd	%xmm2, %xmm7
	je	.L98
.L78:
	call	abort
.L98:
	movq	-64(%rbp), %rax
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vucomisd	%xmm4, %xmm3
	jp	.L79
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm5
	vmovq	%rdx, %xmm6
	vucomisd	%xmm6, %xmm5
	je	.L99
.L79:
	call	abort
.L99:
	movq	.LC4(%rip), %rax
	movq	.LC4+8(%rip), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	call	creal
	vmovq	%xmm0, %rax
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm2
	vucomisd	%xmm2, %xmm7
	jp	.L80
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vucomisd	%xmm4, %xmm3
	jne	.L80
	jmp	.L81
.L80:
	call	link_error
.L81:
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	vmovq	%rdx, %xmm0
	vmovq	%rax, %xmm1
	call	cimag
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm5
	vucomisd	.LC11(%rip), %xmm5
	jp	.L82
	vmovq	%rax, %xmm6
	vucomisd	.LC11(%rip), %xmm6
	je	.L100
.L82:
	call	abort
.L100:
	movq	-56(%rbp), %rax
	vmovq	%rax, %xmm7
	vucomisd	.LC11(%rip), %xmm7
	jp	.L83
	vmovq	%rax, %xmm2
	vucomisd	.LC11(%rip), %xmm2
	je	.L101
.L83:
	call	abort
.L101:
	movq	.LC4(%rip), %rax
	movq	.LC4+8(%rip), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	call	cimag
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm1
	vucomisd	.LC11(%rip), %xmm1
	jp	.L84
	vmovq	%rax, %xmm3
	vucomisd	.LC11(%rip), %xmm3
	jne	.L84
	jmp	.L85
.L84:
	call	link_error
.L85:
	movq	-48(%rbp), %rax
	movl	-40(%rbp), %edx
	movq	-32(%rbp), %rcx
	movl	-24(%rbp), %ebx
	pushq	%rbx
	pushq	%rcx
	pushq	%rdx
	pushq	%rax
	call	conjl
	addq	$32, %rsp
	fstpt	-144(%rbp)
	movq	-144(%rbp), %r8
	movl	-136(%rbp), %r9d
	fstpt	-144(%rbp)
	movq	-144(%rbp), %r10
	movl	-136(%rbp), %r11d
	movq	%r8, %rcx
	movl	%r9d, %ebx
	movq	%r10, %rax
	movl	%r11d, %edx
	movq	%rcx, -144(%rbp)
	movl	%ebx, -136(%rbp)
	fldt	-144(%rbp)
	movq	%rax, -144(%rbp)
	movl	%edx, -136(%rbp)
	fldt	-144(%rbp)
	fld1
	fucomip	%st(2), %st
	setp	%al
	movl	$1, %edx
	fld1
	fucomip	%st(2), %st
	fstp	%st(1)
	cmove	%eax, %edx
	fldt	.LC13(%rip)
	fucomip	%st(1), %st
	setp	%al
	movl	$1, %ecx
	fldt	.LC13(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	cmovne	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	jne	.L53
	call	abort
.L53:
	movq	-48(%rbp), %rcx
	movl	-40(%rbp), %ebx
	movq	-32(%rbp), %rax
	movl	-24(%rbp), %edx
	movq	%rcx, -144(%rbp)
	movl	%ebx, -136(%rbp)
	fldt	-144(%rbp)
	movq	%rax, -144(%rbp)
	movl	%edx, -136(%rbp)
	fldt	-144(%rbp)
	fchs
	fld1
	fucomip	%st(2), %st
	setp	%al
	movl	$1, %edx
	fld1
	fucomip	%st(2), %st
	fstp	%st(1)
	cmove	%eax, %edx
	fldt	.LC13(%rip)
	fucomip	%st(1), %st
	setp	%al
	movl	$1, %ecx
	fldt	.LC13(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	cmovne	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	jne	.L54
	call	abort
.L54:
	pushq	.LC5+24(%rip)
	pushq	.LC5+16(%rip)
	pushq	.LC5+8(%rip)
	pushq	.LC5(%rip)
	call	conjl
	addq	$32, %rsp
	fstpt	-144(%rbp)
	movq	-144(%rbp), %r8
	movl	-136(%rbp), %r9d
	fstpt	-144(%rbp)
	movq	-144(%rbp), %r10
	movl	-136(%rbp), %r11d
	movq	%r8, %rcx
	movl	%r9d, %ebx
	movq	%r10, %rax
	movl	%r11d, %edx
	movq	%rcx, -144(%rbp)
	movl	%ebx, -136(%rbp)
	fldt	-144(%rbp)
	movq	%rax, -144(%rbp)
	movl	%edx, -136(%rbp)
	fldt	-144(%rbp)
	fld1
	fucomip	%st(2), %st
	setp	%al
	movl	$1, %edx
	fld1
	fucomip	%st(2), %st
	fstp	%st(1)
	cmove	%eax, %edx
	fldt	.LC13(%rip)
	fucomip	%st(1), %st
	setp	%al
	movl	$1, %ecx
	fldt	.LC13(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	cmovne	%ecx, %eax
	orl	%edx, %eax
	cmpb	$1, %al
	jne	.L86
	call	link_error
.L86:
	movq	-48(%rbp), %rax
	movl	-40(%rbp), %edx
	movq	-32(%rbp), %rcx
	movl	-24(%rbp), %ebx
	pushq	%rbx
	pushq	%rcx
	pushq	%rdx
	pushq	%rax
	call	creall
	addq	$32, %rsp
	fld1
	fucomip	%st(1), %st
	jp	.L106
	fld1
	fucomip	%st(1), %st
	fstp	%st(0)
	je	.L102
	jmp	.L87
.L106:
	fstp	%st(0)
.L87:
	call	abort
.L102:
	fldt	-48(%rbp)
	fld1
	fucomip	%st(1), %st
	jp	.L107
	fld1
	fucomip	%st(1), %st
	fstp	%st(0)
	je	.L103
	jmp	.L88
.L107:
	fstp	%st(0)
.L88:
	call	abort
.L103:
	pushq	.LC5+24(%rip)
	pushq	.LC5+16(%rip)
	pushq	.LC5+8(%rip)
	pushq	.LC5(%rip)
	call	creall
	addq	$32, %rsp
	fld1
	fucomip	%st(1), %st
	jp	.L108
	fld1
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	.L89
	jmp	.L90
.L108:
	fstp	%st(0)
.L89:
	call	link_error
.L90:
	movq	-48(%rbp), %rax
	movl	-40(%rbp), %edx
	movq	-32(%rbp), %rcx
	movl	-24(%rbp), %ebx
	pushq	%rbx
	pushq	%rcx
	pushq	%rdx
	pushq	%rax
	call	cimagl
	addq	$32, %rsp
	fldt	.LC14(%rip)
	fucomip	%st(1), %st
	jp	.L109
	fldt	.LC14(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	.L104
	jmp	.L91
.L109:
	fstp	%st(0)
.L91:
	call	abort
.L104:
	fldt	-32(%rbp)
	fldt	.LC14(%rip)
	fucomip	%st(1), %st
	jp	.L110
	fldt	.LC14(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	je	.L105
	jmp	.L92
.L110:
	fstp	%st(0)
.L92:
	call	abort
.L105:
	pushq	.LC5+24(%rip)
	pushq	.LC5+16(%rip)
	pushq	.LC5+8(%rip)
	pushq	.LC5(%rip)
	call	cimagl
	addq	$32, %rsp
	fldt	.LC14(%rip)
	fucomip	%st(1), %st
	jp	.L111
	fldt	.LC14(%rip)
	fucomip	%st(1), %st
	fstp	%st(0)
	jne	.L93
	jmp	.L22
.L111:
	fstp	%st(0)
.L93:
	call	link_error
.L22:
	movq	-8(%rbp), %rbx
	leave
	ret
	.size	main_test, .-main_test
	.section	.rodata
	.align 16
.LC0:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.align 16
.LC1:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 4
.LC2:
	.long	2143289344
	.align 4
.LC6:
	.long	1065353216
	.align 4
.LC7:
	.long	3221225472
	.align 4
.LC8:
	.long	1073741824
	.align 8
.LC10:
	.long	0
	.long	-1073741824
	.align 8
.LC11:
	.long	0
	.long	1073741824
	.align 16
.LC13:
	.long	0
	.long	2147483648
	.long	49152
	.long	0
	.align 16
.LC14:
	.long	0
	.long	2147483648
	.long	16384
	.long	0
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
