	.file	"960215-1.c"
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
	.globl	C
	.data
	.align 8
	.type	C, @object
	.size	C, 8
C:
	.long	0
	.long	1073741824
	.globl	U
	.align 8
	.type	U, @object
	.size	U, 8
U:
	.long	0
	.long	1072693248
	.globl	Y2
	.align 8
	.type	Y2, @object
	.size	Y2, 8
Y2:
	.long	0
	.long	1074266112
	.globl	Y1
	.align 8
	.type	Y1, @object
	.size	Y1, 8
Y1:
	.long	0
	.long	1072693248
	.comm	X,8,8
	.comm	Y,8,8
	.comm	Z,8,8
	.comm	T,8,8
	.comm	R,8,8
	.comm	S,8,8
	.text
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	C(%rip), %rdx
	movq	U(%rip), %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	movq	Y2(%rip), %rax
	vmovq	%rax, %xmm4
	vmulsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, X(%rip)
	movq	C(%rip), %rax
	movq	U(%rip), %rdx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vsubsd	%xmm7, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	U(%rip), %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vsubsd	%xmm3, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, Y(%rip)
	movq	C(%rip), %rdx
	movq	U(%rip), %rax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vaddsd	%xmm5, %xmm4, %xmm0
	movq	U(%rip), %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, Z(%rip)
	movq	C(%rip), %rax
	movq	U(%rip), %rdx
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm2
	vsubsd	%xmm2, %xmm1, %xmm0
	movq	Y1(%rip), %rax
	vmovq	%rax, %xmm4
	vmulsd	%xmm4, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, T(%rip)
	movq	X(%rip), %rax
	movq	Z(%rip), %rcx
	movq	U(%rip), %rdx
	vmovq	%rcx, %xmm5
	vmovq	%rdx, %xmm6
	vaddsd	%xmm6, %xmm5, %xmm0
	vmovq	%rax, %xmm1
	vsubsd	%xmm0, %xmm1, %xmm7
	vmovq	%xmm7, %rax
	movq	%rax, X(%rip)
	movq	Y(%rip), %rdx
	movq	Y1(%rip), %rax
	vmovq	%rdx, %xmm3
	vmovq	%rax, %xmm4
	vmulsd	%xmm4, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, R(%rip)
	movq	Z(%rip), %rdx
	movq	Y2(%rip), %rax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vmulsd	%xmm7, %xmm6, %xmm5
	vmovq	%xmm5, %rax
	movq	%rax, S(%rip)
	movq	T(%rip), %rax
	movq	Y(%rip), %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vsubsd	%xmm3, %xmm2, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, T(%rip)
	movq	U(%rip), %rax
	movq	Y(%rip), %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vsubsd	%xmm5, %xmm4, %xmm0
	movq	R(%rip), %rax
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, Y(%rip)
	movq	S(%rip), %rax
	movq	Z(%rip), %rcx
	movq	U(%rip), %rdx
	vmovq	%rcx, %xmm1
	vmovq	%rdx, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	movq	U(%rip), %rdx
	vmovq	%rdx, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm0
	vmovq	%rax, %xmm5
	vsubsd	%xmm0, %xmm5, %xmm4
	vmovq	%xmm4, %rax
	movq	%rax, Z(%rip)
	movq	Y2(%rip), %rdx
	movq	U(%rip), %rax
	vmovq	%rdx, %xmm6
	vmovq	%rax, %xmm7
	vaddsd	%xmm7, %xmm6, %xmm0
	movq	Y1(%rip), %rax
	vmovq	%rax, %xmm2
	vmulsd	%xmm2, %xmm0, %xmm1
	vmovq	%xmm1, %rax
	movq	%rax, R(%rip)
	movq	Y2(%rip), %rdx
	movq	Y1(%rip), %rax
	vmovq	%rdx, %xmm4
	vmovq	%rax, %xmm5
	vmulsd	%xmm5, %xmm4, %xmm3
	vmovq	%xmm3, %rax
	movq	%rax, Y1(%rip)
	movq	R(%rip), %rax
	movq	Y2(%rip), %rdx
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm1
	vsubsd	%xmm1, %xmm7, %xmm6
	vmovq	%xmm6, %rax
	movq	%rax, R(%rip)
	movq	Y1(%rip), %rax
	movabsq	$4602678819172646912, %rdx
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vsubsd	%xmm4, %xmm3, %xmm2
	vmovq	%xmm2, %rax
	movq	%rax, Y1(%rip)
	movq	Z(%rip), %rax
	vmovq	%rax, %xmm5
	vucomisd	.LC1(%rip), %xmm5
	jp	.L42
	vmovq	%rax, %xmm6
	vucomisd	.LC1(%rip), %xmm6
	je	.L43
.L42:
	call	abort
.L43:
	movl	$0, %edi
	call	exit
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1075314688
	.ident	"GCC: (Ubuntu 4.9.4-2ubuntu1) 4.9.4"
	.section	.note.GNU-stack,"",@progbits
