	.file	"20010605-2.c"
	.text
	.globl	strchr
	.type	strchr, @function
strchr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	nop
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movl	-12(%rbp), %edx
	cmpb	%dl, %al
	je	.L6
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L3
	movl	$0, %eax
	jmp	.L1
.L3:
	movq	-8(%rbp), %rax
	jmp	.L1
.L6:
.L1:
	popq	%rbp
	ret
	.size	strchr, .-strchr
	.globl	strlen
	.type	strlen, @function
strlen:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L8
.L9:
	addq	$1, -8(%rbp)
.L8:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L9
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	strlen, .-strlen
	.globl	strcpy
	.type	strcpy, @function
strcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
.L12:
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
	jne	.L12
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
	.size	strcpy, .-strcpy
	.globl	memcmp
	.type	memcmp, @function
memcmp:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L15
.L18:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	je	.L16
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	jmp	.L17
.L16:
	addq	$1, -16(%rbp)
	addq	$1, -8(%rbp)
.L15:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L18
	movl	$0, %eax
.L17:
	popq	%rbp
	ret
	.size	memcmp, .-memcmp
	.globl	exit
	.type	exit, @function
exit:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
#APP
# 41 "src/library/mini_stdlib.h" 1
	movq $-1, %rax
	jmp %rax
	
# 0 "" 2
#NO_APP
	popq	%rbp
	ret
	.size	exit, .-exit
	.globl	abort
	.type	abort, @function
abort:
	pushq	%rbp
	movq	%rsp, %rbp
#APP
# 46 "src/library/mini_stdlib.h" 1
	movq $-1, %rax
	jmp %rax
	
# 0 "" 2
#NO_APP
	popq	%rbp
	ret
	.size	abort, .-abort
	.globl	memset
	.type	memset, @function
memset:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L22
.L23:
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	movl	-28(%rbp), %edx
	movb	%dl, (%rax)
.L22:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L23
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.size	memset, .-memset
	.globl	memcpy
	.type	memcpy, @function
memcpy:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L26
.L27:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	movq	-8(%rbp), %rdx
	leaq	1(%rdx), %rcx
	movq	%rcx, -8(%rbp)
	movzbl	(%rdx), %edx
	movb	%dl, (%rax)
.L26:
	movq	-40(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -40(%rbp)
	testq	%rax, %rax
	jne	.L27
	movq	-24(%rbp), %rax
	popq	%rbp
	ret
	.size	memcpy, .-memcpy
	.globl	malloc
	.type	malloc, @function
malloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
	.size	malloc, .-malloc
	.globl	calloc
	.type	calloc, @function
calloc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1000, %eax
	popq	%rbp
	ret
	.size	calloc, .-calloc
	.globl	free
	.type	free, @function
free:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
	.size	free, .-free
	.globl	isprint
	.type	isprint, @function
isprint:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cmpl	$96, -4(%rbp)
	jle	.L35
	cmpl	$122, -4(%rbp)
	jg	.L35
	movl	$1, %eax
	jmp	.L36
.L35:
	cmpl	$64, -4(%rbp)
	jle	.L37
	cmpl	$90, -4(%rbp)
	jg	.L37
	movl	$1, %eax
	jmp	.L36
.L37:
	cmpl	$47, -4(%rbp)
	jle	.L38
	cmpl	$57, -4(%rbp)
	jg	.L38
	movl	$1, %eax
	jmp	.L36
.L38:
	movl	$0, %eax
.L36:
	popq	%rbp
	ret
	.size	isprint, .-isprint
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	-72(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$4607182418800017408, %rax
	movq	%rax, -32(%rbp)
	movabsq	$4607182418800017408, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movabsq	$4611686018427387904, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	movl	$2, %eax
	call	foo
	movl	-80(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	.LC2(%rip), %eax
	movl	%eax, -40(%rbp)
	movl	.LC2(%rip), %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	.LC3(%rip), %eax
	movl	%eax, -36(%rbp)
	movq	-40(%rbp), %rax
	vmovq	%rax, %xmm0
	movl	$1, %eax
	call	bar
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movabsq	$4617315517961601024, %rax
	movq	%rax, -16(%rbp)
	movabsq	$4617315517961601024, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movabsq	$4618441417868443648, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	vmovq	%rax, %xmm0
	vmovq	%rdx, %xmm1
	movl	$2, %eax
	call	baz
	movl	$0, %edi
	call	exit
	.size	main, .-main
	.globl	foo
	.type	foo, @function
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovq	%xmm0, %rax
	vmovq	%xmm1, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rax
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jp	.L41
	movabsq	$4607182418800017408, %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jne	.L41
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm6
	vucomisd	.LC1(%rip), %xmm6
	jp	.L41
	vmovq	%rax, %xmm7
	vucomisd	.LC1(%rip), %xmm7
	je	.L44
.L41:
	call	abort
.L44:
	leave
	ret
	.size	foo, .-foo
	.globl	bar
	.type	bar, @function
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, -16(%rbp)
	movl	%eax, -12(%rbp)
	movl	-16(%rbp), %eax
	vmovd	%eax, %xmm1
	vucomiss	.LC2(%rip), %xmm1
	jp	.L46
	vmovd	%eax, %xmm2
	vucomiss	.LC2(%rip), %xmm2
	jne	.L46
	movl	-12(%rbp), %eax
	vmovd	%eax, %xmm3
	vucomiss	.LC3(%rip), %xmm3
	jp	.L46
	vmovd	%eax, %xmm4
	vucomiss	.LC3(%rip), %xmm4
	je	.L49
.L46:
	call	abort
.L49:
	leave
	ret
	.size	bar, .-bar
	.globl	baz
	.type	baz, @function
baz:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	vmovq	%xmm0, %rax
	vmovq	%xmm1, %rcx
	movq	%rax, %rdx
	movq	%rcx, %rax
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	vmovq	%rax, %xmm2
	vucomisd	.LC4(%rip), %xmm2
	jp	.L51
	vmovq	%rax, %xmm3
	vucomisd	.LC4(%rip), %xmm3
	jne	.L51
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm4
	vucomisd	.LC5(%rip), %xmm4
	jp	.L51
	vmovq	%rax, %xmm5
	vucomisd	.LC5(%rip), %xmm5
	je	.L54
.L51:
	call	abort
.L54:
	leave
	ret
	.size	baz, .-baz
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1073741824
	.align 4
.LC2:
	.long	1077936128
	.align 4
.LC3:
	.long	1082130432
	.align 8
.LC4:
	.long	0
	.long	1075052544
	.align 8
.LC5:
	.long	0
	.long	1075314688
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
