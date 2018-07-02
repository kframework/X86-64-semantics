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
	.comm	out,100,64
c1:
	.byte	97
c2:
	.byte	127
c3:
	.byte	-128
c4:
	.byte	-1
c5:
	.byte	-1
d1:
	.long	2576980378
	.long	1069128089
d2:
	.long	2576980378
	.long	1070176665
d3:
	.long	858993459
	.long	1070805811
d4:
	.long	2576980378
	.long	1071225241
d5:
	.long	0
	.long	1071644672
d6:
	.long	858993459
	.long	1071854387
d7:
	.long	1717986918
	.long	1072064102
d8:
	.long	2576980378
	.long	1072273817
d9:
	.long	3435973837
	.long	1072483532
B1:
	.long	2576980378
	.long	1069128089
	.long	1
	.long	2
	.long	3
	.zero	4
B2:
	.long	2576980378
	.long	1070176665
	.long	5
	.long	4
	.long	3
	.zero	4
X1:
	.string	"abcdefghijklmnopqrstuvwxyzABCDEF"
	.byte	71
X2:
	.string	"123"
	.zero	29
	.byte	57
X3:
	.string	"return-return-return"
	.zero	12
	.byte	82
LC0:
	.string	"X f(B,char,double,B):({%g,{%d,%d,%d}},'%c',%g,{%g,{%d,%d,%d}})"
f:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$88, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, %eax
	vmovsd	%xmm0, -88(%rbp)
	movb	%al, -76(%rbp)
	movq	xr.2982(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	xr.2982+8(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	xr.2982+16(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	xr.2982+24(%rip), %rax
	movq	%rax, -40(%rbp)
	movzwl	xr.2982+32(%rip), %eax
	movw	%ax, -32(%rbp)
	movzbl	-76(%rbp), %eax
	movb	%al, -31(%rbp)
	movl	56(%rbp), %r10d
	movl	52(%rbp), %r9d
	movl	48(%rbp), %r8d
	movq	40(%rbp), %rcx
	movsbl	-76(%rbp), %ebx
	movl	32(%rbp), %r11d
	movl	28(%rbp), %edi
	movl	24(%rbp), %esi
	movq	16(%rbp), %rax
	subq	$8, %rsp
	movq	-88(%rbp), %rdx
	pushq	%r10
	pushq	%r9
	pushq	%r8
	vmovq	%rcx, %xmm2
	vmovq	%rdx, %xmm1
	movl	%ebx, %r9d
	movl	%r11d, %r8d
	movl	%edi, %ecx
	movl	%esi, %edx
	vmovq	%rax, %xmm0
	movl	$LC0, %esi
	movl	$out, %edi
	movl	$3, %eax
	call	sprintf
	addq	$32, %rsp
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movzwl	-32(%rbp), %edx
	movw	%dx, 32(%rax)
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	ret
fp:
	.quad	f
.globl _start
_start:
	leaq	8(%rsp), %r10
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r10
	subq	$232, %rsp
	movq	d3(%rip), %rax
	movzbl	c2(%rip), %edx
	movsbl	%dl, %ecx
	leaq	-64(%rbp), %rdx
	pushq	B2+16(%rip)
	pushq	B2+8(%rip)
	pushq	B2(%rip)
	pushq	B1+16(%rip)
	pushq	B1+8(%rip)
	pushq	B1(%rip)
	vmovq	%rax, %xmm0
	movl	%ecx, %esi
	movq	%rdx, %rdi
	call	f
	addq	$48, %rsp
	leaq	-176(%rbp), %rax
	movl	$out, %esi
	movq	%rax, %rdi
	call	strcpy
	movb	$0, -31(%rbp)
	movzbl	-31(%rbp), %eax
	movb	%al, -64(%rbp)
	movq	fp(%rip), %rdx
	movq	d3(%rip), %rax
	movzbl	c2(%rip), %ecx
	movsbl	%cl, %esi
	leaq	-240(%rbp), %rcx
	pushq	B2+16(%rip)
	pushq	B2+8(%rip)
	pushq	B2(%rip)
	pushq	B1+16(%rip)
	pushq	B1+8(%rip)
	pushq	B1(%rip)
	vmovq	%rax, %xmm0
	movq	%rcx, %rdi
	call %rdx
	addq	$48, %rsp
	movq	-240(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -40(%rbp)
	movzwl	-208(%rbp), %eax
	movw	%ax, -32(%rbp)
	leaq	-176(%rbp), %rax
	movl	$out, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	je	L42
	call	abort
L42:
	movl	$0, %edi
	call	exit
xr.2982:
	.string	"return val"
	.zero	22
	.byte	82
