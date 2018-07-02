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
a1:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	x.2319(%rip), %eax
	movzbl	y.2320(%rip), %edx
	andl	$-65, %edx
	cmpb	%dl, %al
	jne	L40
	movzbl	x.2319+1(%rip), %edx
	movzbl	y.2320+1(%rip), %eax
	cmpb	%al, %dl
	jne	L40
	movl	$1, %eax
	jmp	L41
L40:
	movl	$0, %eax
L41:
	popq	%rbp
	ret
a2:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	x.2323(%rip), %edx
	movzbl	y.2324(%rip), %eax
	cmpb	%al, %dl
	jne	L44
	movzbl	x.2323+1(%rip), %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movzbl	y.2324+1(%rip), %eax
	cmpb	%al, %dl
	jne	L44
	movl	$1, %eax
	jmp	L45
L44:
	movl	$0, %eax
L45:
	popq	%rbp
	ret
a3:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	x.2327(%rip), %eax
	andl	$-9, %eax
	movl	%eax, %edx
	movzbl	y.2328(%rip), %eax
	andl	$-33, %eax
	cmpb	%al, %dl
	jne	L48
	movzbl	x.2327+1(%rip), %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movzbl	y.2328+1(%rip), %eax
	andl	$-17, %eax
	cmpb	%al, %dl
	jne	L48
	movl	$1, %eax
	jmp	L49
L48:
	movl	$0, %eax
L49:
	popq	%rbp
	ret
b1:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2335+6(%rip), %eax
	movzwl	y.2336+6(%rip), %edx
	andl	$-65, %edx
	cmpw	%dx, %ax
	jne	L52
	movzwl	x.2335+4(%rip), %edx
	movzwl	y.2336+4(%rip), %eax
	cmpw	%ax, %dx
	jne	L52
	movl	$1, %eax
	jmp	L53
L52:
	movl	$0, %eax
L53:
	popq	%rbp
	ret
b2:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2339+6(%rip), %edx
	movzwl	y.2340+6(%rip), %eax
	cmpw	%ax, %dx
	jne	L56
	movzwl	x.2339+4(%rip), %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movzwl	y.2340+4(%rip), %eax
	cmpw	%ax, %dx
	jne	L56
	movl	$1, %eax
	jmp	L57
L56:
	movl	$0, %eax
L57:
	popq	%rbp
	ret
b3:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2343+6(%rip), %eax
	andl	$-9, %eax
	movl	%eax, %edx
	movzwl	y.2344+6(%rip), %eax
	andl	$-33, %eax
	cmpw	%ax, %dx
	jne	L60
	movzwl	x.2343+4(%rip), %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movzwl	y.2344+4(%rip), %eax
	andl	$-17, %eax
	cmpw	%ax, %dx
	jne	L60
	movl	$1, %eax
	jmp	L61
L60:
	movl	$0, %eax
L61:
	popq	%rbp
	ret
c1:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2352+2(%rip), %eax
	shrw	$2, %ax
	movzwl	%ax, %eax
	movzwl	y.2353+2(%rip), %edx
	shrw	$2, %dx
	movzwl	%dx, %edx
	andl	$-65, %edx
	cmpl	%edx, %eax
	jne	L64
	movl	x.2352(%rip), %eax
	shrl	$4, %eax
	movl	%eax, %edx
	andw	$16383, %dx
	movl	y.2353(%rip), %eax
	shrl	$4, %eax
	andw	$16383, %ax
	cmpw	%ax, %dx
	jne	L64
	movl	$1, %eax
	jmp	L65
L64:
	movl	$0, %eax
L65:
	popq	%rbp
	ret
c2:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2356+2(%rip), %eax
	shrw	$2, %ax
	movl	%eax, %edx
	movzwl	y.2357+2(%rip), %eax
	shrw	$2, %ax
	cmpw	%ax, %dx
	jne	L68
	movl	x.2356(%rip), %eax
	shrl	$4, %eax
	andw	$16383, %ax
	movzwl	%ax, %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movl	y.2357(%rip), %eax
	shrl	$4, %eax
	andw	$16383, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jne	L68
	movl	$1, %eax
	jmp	L69
L68:
	movl	$0, %eax
L69:
	popq	%rbp
	ret
c3:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2360+2(%rip), %eax
	shrw	$2, %ax
	movzwl	%ax, %eax
	andl	$-9, %eax
	movl	%eax, %edx
	movzwl	y.2361+2(%rip), %eax
	shrw	$2, %ax
	movzwl	%ax, %eax
	andl	$-33, %eax
	cmpl	%eax, %edx
	jne	L72
	movl	x.2360(%rip), %eax
	shrl	$4, %eax
	andw	$16383, %ax
	movzwl	%ax, %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movl	y.2361(%rip), %eax
	shrl	$4, %eax
	andw	$16383, %ax
	movzwl	%ax, %eax
	andl	$-17, %eax
	cmpl	%eax, %edx
	jne	L72
	movl	$1, %eax
	jmp	L73
L72:
	movl	$0, %eax
L73:
	popq	%rbp
	ret
d1:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2369(%rip), %eax
	andw	$16383, %ax
	movzwl	%ax, %eax
	movzwl	y.2370(%rip), %edx
	andw	$16383, %dx
	movzwl	%dx, %edx
	andl	$-65, %edx
	cmpl	%edx, %eax
	jne	L76
	movl	x.2369(%rip), %eax
	shrl	$14, %eax
	movl	%eax, %edx
	andw	$16383, %dx
	movl	y.2370(%rip), %eax
	shrl	$14, %eax
	andw	$16383, %ax
	cmpw	%ax, %dx
	jne	L76
	movl	$1, %eax
	jmp	L77
L76:
	movl	$0, %eax
L77:
	popq	%rbp
	ret
d2:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2373(%rip), %eax
	andw	$16383, %ax
	movl	%eax, %edx
	movzwl	y.2374(%rip), %eax
	andw	$16383, %ax
	cmpw	%ax, %dx
	jne	L80
	movl	x.2373(%rip), %eax
	shrl	$14, %eax
	andw	$16383, %ax
	movzwl	%ax, %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movl	y.2374(%rip), %eax
	shrl	$14, %eax
	andw	$16383, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jne	L80
	movl	$1, %eax
	jmp	L81
L80:
	movl	$0, %eax
L81:
	popq	%rbp
	ret
d3:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2377(%rip), %eax
	andw	$16383, %ax
	movzwl	%ax, %eax
	andl	$-9, %eax
	movl	%eax, %edx
	movzwl	y.2378(%rip), %eax
	andw	$16383, %ax
	movzwl	%ax, %eax
	andl	$-33, %eax
	cmpl	%eax, %edx
	jne	L84
	movl	x.2377(%rip), %eax
	shrl	$14, %eax
	andw	$16383, %ax
	movzwl	%ax, %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movl	y.2378(%rip), %eax
	shrl	$14, %eax
	andw	$16383, %ax
	movzwl	%ax, %eax
	andl	$-17, %eax
	cmpl	%eax, %edx
	jne	L84
	movl	$1, %eax
	jmp	L85
L84:
	movl	$0, %eax
L85:
	popq	%rbp
	ret
e1:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2386+2(%rip), %eax
	sarw	$2, %ax
	movl	%eax, %edx
	movzwl	y.2387+2(%rip), %eax
	sarw	$2, %ax
	andl	$-65, %eax
	cmpw	%ax, %dx
	jne	L88
	movl	x.2386(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	movl	%eax, %edx
	movl	y.2387(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	cmpw	%ax, %dx
	jne	L88
	movl	$1, %eax
	jmp	L89
L88:
	movl	$0, %eax
L89:
	popq	%rbp
	ret
e2:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2390+2(%rip), %eax
	sarw	$2, %ax
	movl	%eax, %edx
	movzwl	y.2391+2(%rip), %eax
	sarw	$2, %ax
	cmpw	%ax, %dx
	jne	L92
	movl	x.2390(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movl	y.2391(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	cmpw	%ax, %dx
	jne	L92
	movl	$1, %eax
	jmp	L93
L92:
	movl	$0, %eax
L93:
	popq	%rbp
	ret
e3:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2394+2(%rip), %eax
	sarw	$2, %ax
	andl	$-9, %eax
	movl	%eax, %edx
	movzwl	y.2395+2(%rip), %eax
	sarw	$2, %ax
	andl	$-33, %eax
	cmpw	%ax, %dx
	jne	L96
	movl	x.2394(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movl	y.2395(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	andl	$-17, %eax
	cmpw	%ax, %dx
	jne	L96
	movl	$1, %eax
	jmp	L97
L96:
	movl	$0, %eax
L97:
	popq	%rbp
	ret
e4:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2398+2(%rip), %eax
	andl	$-4, %eax
	testw	%ax, %ax
	jne	L100
	movl	x.2398(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	cwtl
	andl	$8192, %eax
	testl	%eax, %eax
	je	L100
	movl	$1, %eax
	jmp	L101
L100:
	movl	$0, %eax
L101:
	popq	%rbp
	ret
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2406(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	movzwl	y.2407(%rip), %edx
	sall	$2, %edx
	sarw	$2, %dx
	andl	$-65, %edx
	cmpw	%dx, %ax
	jne	L104
	movl	x.2406(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	movl	%eax, %edx
	movl	y.2407(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	cmpw	%ax, %dx
	jne	L104
	movl	$1, %eax
	jmp	L105
L104:
	movl	$0, %eax
L105:
	popq	%rbp
	ret
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2410(%rip), %eax
	leal	0(,%rax,4), %edx
	sarw	$2, %dx
	movzwl	y.2411(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	cmpw	%ax, %dx
	jne	L108
	movl	x.2410(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movl	y.2411(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	cmpw	%ax, %dx
	jne	L108
	movl	$1, %eax
	jmp	L109
L108:
	movl	$0, %eax
L109:
	popq	%rbp
	ret
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2414(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	andl	$-9, %eax
	movl	%eax, %edx
	movzwl	y.2415(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	andl	$-33, %eax
	cmpw	%ax, %dx
	jne	L112
	movl	x.2414(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movl	y.2415(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	andl	$-17, %eax
	cmpw	%ax, %dx
	jne	L112
	movl	$1, %eax
	jmp	L113
L112:
	movl	$0, %eax
L113:
	popq	%rbp
	ret
f4:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2418(%rip), %eax
	andw	$16383, %ax
	testw	%ax, %ax
	jne	L116
	movl	x.2418(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	cwtl
	andl	$8192, %eax
	testl	%eax, %eax
	je	L116
	movl	$1, %eax
	jmp	L117
L116:
	movl	$0, %eax
L117:
	popq	%rbp
	ret
g1:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2431+2(%rip), %eax
	sarw	$2, %ax
	movl	%eax, %edx
	movl	y.2432(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	andl	$-65, %eax
	cmpw	%ax, %dx
	jne	L120
	movl	x.2431(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	movl	%eax, %edx
	movzwl	y.2432(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	cmpw	%ax, %dx
	jne	L120
	movl	$1, %eax
	jmp	L121
L120:
	movl	$0, %eax
L121:
	popq	%rbp
	ret
g2:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2435+2(%rip), %eax
	sarw	$2, %ax
	movl	%eax, %edx
	movl	y.2436(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	cmpw	%ax, %dx
	jne	L124
	movl	x.2435(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movzwl	y.2436(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	cmpw	%ax, %dx
	jne	L124
	movl	$1, %eax
	jmp	L125
L124:
	movl	$0, %eax
L125:
	popq	%rbp
	ret
g3:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2439+2(%rip), %eax
	sarw	$2, %ax
	andl	$-9, %eax
	movl	%eax, %edx
	movl	y.2440(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	andl	$-33, %eax
	cmpw	%ax, %dx
	jne	L128
	movl	x.2439(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movzwl	y.2440(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	andl	$-17, %eax
	cmpw	%ax, %dx
	jne	L128
	movl	$1, %eax
	jmp	L129
L128:
	movl	$0, %eax
L129:
	popq	%rbp
	ret
g4:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2443+2(%rip), %eax
	sarw	$2, %ax
	cwtl
	andl	$240, %eax
	movl	%eax, %edx
	movl	y.2444(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	cwtl
	andl	$3840, %eax
	cmpl	%eax, %edx
	jne	L132
	movl	x.2443(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	cwtl
	andl	$240, %eax
	movl	%eax, %edx
	movzwl	y.2444(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	cwtl
	andl	$3840, %eax
	cmpl	%eax, %edx
	jne	L132
	movl	$1, %eax
	jmp	L133
L132:
	movl	$0, %eax
L133:
	popq	%rbp
	ret
g5:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2447+2(%rip), %eax
	sarw	$2, %ax
	cwtl
	andl	$3840, %eax
	movl	%eax, %edx
	movl	y.2448(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	cwtl
	andl	$240, %eax
	cmpl	%eax, %edx
	jne	L136
	movl	x.2447(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	cwtl
	andl	$3840, %eax
	movl	%eax, %edx
	movzwl	y.2448(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	cwtl
	andl	$240, %eax
	cmpl	%eax, %edx
	jne	L136
	movl	$1, %eax
	jmp	L137
L136:
	movl	$0, %eax
L137:
	popq	%rbp
	ret
g6:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2451+2(%rip), %eax
	sarw	$2, %ax
	cwtl
	andl	$1023, %eax
	movl	%eax, %edx
	movl	y.2452(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	cwtl
	andl	$16368, %eax
	cmpl	%eax, %edx
	jne	L140
	movl	x.2451(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	cwtl
	andl	$1023, %eax
	movl	%eax, %edx
	movzwl	y.2452(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	cwtl
	andl	$16368, %eax
	cmpl	%eax, %edx
	jne	L140
	movl	$1, %eax
	jmp	L141
L140:
	movl	$0, %eax
L141:
	popq	%rbp
	ret
g7:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2455+2(%rip), %eax
	sarw	$2, %ax
	cwtl
	andl	$16368, %eax
	movl	%eax, %edx
	movl	y.2456(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	cwtl
	andl	$1023, %eax
	cmpl	%eax, %edx
	jne	L144
	movl	x.2455(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	cwtl
	andl	$16368, %eax
	movl	%eax, %edx
	movzwl	y.2456(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	cwtl
	andl	$1023, %eax
	cmpl	%eax, %edx
	jne	L144
	movl	$1, %eax
	jmp	L145
L144:
	movl	$0, %eax
L145:
	popq	%rbp
	ret
h1:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2469(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	movl	y.2470(%rip), %edx
	sall	$14, %edx
	sarl	$18, %edx
	andl	$-65, %edx
	cmpw	%dx, %ax
	jne	L148
	movl	x.2469(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	movzwl	y.2470+2(%rip), %edx
	sarw	$2, %dx
	cmpw	%dx, %ax
	jne	L148
	movl	$1, %eax
	jmp	L149
L148:
	movl	$0, %eax
L149:
	popq	%rbp
	ret
h2:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2473(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	movl	y.2474(%rip), %edx
	sall	$14, %edx
	sarl	$18, %edx
	cmpw	%dx, %ax
	jne	L152
	movl	x.2473(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movzwl	y.2474+2(%rip), %eax
	sarw	$2, %ax
	cmpw	%ax, %dx
	jne	L152
	movl	$1, %eax
	jmp	L153
L152:
	movl	$0, %eax
L153:
	popq	%rbp
	ret
h3:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2477(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	andl	$-9, %eax
	movl	%eax, %edx
	movl	y.2478(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	andl	$-33, %eax
	cmpw	%ax, %dx
	jne	L156
	movl	x.2477(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movzwl	y.2478+2(%rip), %eax
	sarw	$2, %ax
	andl	$-17, %eax
	cmpw	%ax, %dx
	jne	L156
	movl	$1, %eax
	jmp	L157
L156:
	movl	$0, %eax
L157:
	popq	%rbp
	ret
h4:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2481(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	cwtl
	andl	$240, %eax
	movl	%eax, %edx
	movl	y.2482(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	cwtl
	andl	$3840, %eax
	cmpl	%eax, %edx
	jne	L160
	movl	x.2481(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	cwtl
	andl	$240, %eax
	movl	%eax, %edx
	movzwl	y.2482+2(%rip), %eax
	sarw	$2, %ax
	cwtl
	andl	$3840, %eax
	cmpl	%eax, %edx
	jne	L160
	movl	$1, %eax
	jmp	L161
L160:
	movl	$0, %eax
L161:
	popq	%rbp
	ret
h5:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2485(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	cwtl
	andl	$3840, %eax
	movl	%eax, %edx
	movl	y.2486(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	cwtl
	andl	$240, %eax
	cmpl	%eax, %edx
	jne	L164
	movl	x.2485(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	cwtl
	andl	$3840, %eax
	movl	%eax, %edx
	movzwl	y.2486+2(%rip), %eax
	sarw	$2, %ax
	cwtl
	andl	$240, %eax
	cmpl	%eax, %edx
	jne	L164
	movl	$1, %eax
	jmp	L165
L164:
	movl	$0, %eax
L165:
	popq	%rbp
	ret
h6:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2489(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	cwtl
	andl	$1023, %eax
	movl	%eax, %edx
	movl	y.2490(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	cwtl
	andl	$16368, %eax
	cmpl	%eax, %edx
	jne	L168
	movl	x.2489(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	cwtl
	andl	$1023, %eax
	movl	%eax, %edx
	movzwl	y.2490+2(%rip), %eax
	sarw	$2, %ax
	cwtl
	andl	$16368, %eax
	cmpl	%eax, %edx
	jne	L168
	movl	$1, %eax
	jmp	L169
L168:
	movl	$0, %eax
L169:
	popq	%rbp
	ret
h7:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2493(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	cwtl
	andl	$16368, %eax
	movl	%eax, %edx
	movl	y.2494(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	cwtl
	andl	$1023, %eax
	cmpl	%eax, %edx
	jne	L172
	movl	x.2493(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	cwtl
	andl	$16368, %eax
	movl	%eax, %edx
	movzwl	y.2494+2(%rip), %eax
	sarw	$2, %ax
	cwtl
	andl	$1023, %eax
	cmpl	%eax, %edx
	jne	L172
	movl	$1, %eax
	jmp	L173
L172:
	movl	$0, %eax
L173:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	a1
	testl	%eax, %eax
	jne	L176
	call	abort
L176:
	movl	$0, %eax
	call	a2
	testl	%eax, %eax
	jne	L177
	call	abort
L177:
	movl	$0, %eax
	call	a3
	testl	%eax, %eax
	jne	L178
	call	abort
L178:
	movl	$0, %eax
	call	b1
	testl	%eax, %eax
	jne	L179
	call	abort
L179:
	movl	$0, %eax
	call	b2
	testl	%eax, %eax
	jne	L180
	call	abort
L180:
	movl	$0, %eax
	call	b3
	testl	%eax, %eax
	jne	L181
	call	abort
L181:
	movl	$0, %eax
	call	c1
	testl	%eax, %eax
	jne	L182
	call	abort
L182:
	movl	$0, %eax
	call	c2
	testl	%eax, %eax
	jne	L183
	call	abort
L183:
	movl	$0, %eax
	call	c3
	testl	%eax, %eax
	jne	L184
	call	abort
L184:
	movl	$0, %eax
	call	d1
	testl	%eax, %eax
	jne	L185
	call	abort
L185:
	movl	$0, %eax
	call	d2
	testl	%eax, %eax
	jne	L186
	call	abort
L186:
	movl	$0, %eax
	call	d3
	testl	%eax, %eax
	jne	L187
	call	abort
L187:
	movl	$0, %eax
	call	e1
	testl	%eax, %eax
	jne	L188
	call	abort
L188:
	movl	$0, %eax
	call	e2
	testl	%eax, %eax
	jne	L189
	call	abort
L189:
	movl	$0, %eax
	call	e3
	testl	%eax, %eax
	jne	L190
	call	abort
L190:
	movl	$0, %eax
	call	e4
	testl	%eax, %eax
	jne	L191
	call	abort
L191:
	movl	$0, %eax
	call	f1
	testl	%eax, %eax
	jne	L192
	call	abort
L192:
	movl	$0, %eax
	call	f2
	testl	%eax, %eax
	jne	L193
	call	abort
L193:
	movl	$0, %eax
	call	f3
	testl	%eax, %eax
	jne	L194
	call	abort
L194:
	movl	$0, %eax
	call	f4
	testl	%eax, %eax
	jne	L195
	call	abort
L195:
	movl	$0, %eax
	call	g1
	testl	%eax, %eax
	jne	L196
	call	abort
L196:
	movl	$0, %eax
	call	g2
	testl	%eax, %eax
	jne	L197
	call	abort
L197:
	movl	$0, %eax
	call	g3
	testl	%eax, %eax
	jne	L198
	call	abort
L198:
	movl	$0, %eax
	call	g4
	testl	%eax, %eax
	je	L199
	call	abort
L199:
	movl	$0, %eax
	call	g5
	testl	%eax, %eax
	je	L200
	call	abort
L200:
	movl	$0, %eax
	call	g6
	testl	%eax, %eax
	jne	L201
	call	abort
L201:
	movl	$0, %eax
	call	g7
	testl	%eax, %eax
	jne	L202
	call	abort
L202:
	movl	$0, %eax
	call	h1
	testl	%eax, %eax
	jne	L203
	call	abort
L203:
	movl	$0, %eax
	call	h2
	testl	%eax, %eax
	jne	L204
	call	abort
L204:
	movl	$0, %eax
	call	h3
	testl	%eax, %eax
	jne	L205
	call	abort
L205:
	movl	$0, %eax
	call	h4
	testl	%eax, %eax
	je	L206
	call	abort
L206:
	movl	$0, %eax
	call	h5
	testl	%eax, %eax
	je	L207
	call	abort
L207:
	movl	$0, %eax
	call	h6
	testl	%eax, %eax
	jne	L208
	call	abort
L208:
	movl	$0, %eax
	call	h7
	testl	%eax, %eax
	jne	L209
	call	abort
L209:
	movl	$0, %edi
	call	exit
x.2319:
	.byte	1
	.byte	2
	.value	-2
y.2320:
	.byte	65
	.byte	2
	.value	-3
x.2323:
	.byte	1
	.byte	66
	.value	-2
y.2324:
	.byte	1
	.byte	2
	.value	-3
x.2327:
	.byte	9
	.byte	66
	.value	-2
y.2328:
	.byte	33
	.byte	18
	.value	-3
x.2335:
	.long	-2
	.value	2
	.value	1
y.2336:
	.long	-3
	.value	2
	.value	65
x.2339:
	.long	-2
	.value	66
	.value	1
y.2340:
	.long	-3
	.value	2
	.value	1
x.2343:
	.long	-2
	.value	66
	.value	9
y.2344:
	.long	-3
	.value	18
	.value	33
x.2352:
	.byte	46
	.byte	0
	.byte	4
	.byte	0
	.zero	12
y.2353:
	.byte	45
	.byte	0
	.byte	4
	.byte	1
	.zero	12
x.2356:
	.byte	46
	.byte	4
	.byte	4
	.byte	0
	.zero	12
y.2357:
	.byte	45
	.byte	0
	.byte	4
	.byte	0
	.zero	12
x.2360:
	.byte	46
	.byte	4
	.byte	36
	.byte	0
	.zero	12
y.2361:
	.byte	45
	.byte	1
	.byte	132
	.byte	0
	.zero	12
x.2369:
	.byte	1
	.byte	128
	.byte	0
	.byte	224
	.zero	12
y.2370:
	.byte	65
	.byte	128
	.byte	0
	.byte	208
	.zero	12
x.2373:
	.byte	1
	.byte	128
	.byte	16
	.byte	224
	.zero	12
y.2374:
	.byte	1
	.byte	128
	.byte	0
	.byte	208
	.zero	12
x.2377:
	.byte	9
	.byte	128
	.byte	16
	.byte	224
	.zero	12
y.2378:
	.byte	33
	.byte	128
	.byte	4
	.byte	208
	.zero	12
x.2386:
	.byte	238
	.byte	255
	.byte	255
	.byte	254
	.zero	12
y.2387:
	.byte	237
	.byte	255
	.byte	255
	.byte	255
	.zero	12
x.2390:
	.byte	238
	.byte	255
	.byte	255
	.byte	255
	.zero	12
y.2391:
	.byte	237
	.byte	251
	.byte	255
	.byte	255
	.zero	12
x.2394:
	.byte	238
	.byte	254
	.byte	127
	.byte	255
	.zero	12
y.2395:
	.byte	237
	.byte	251
	.byte	223
	.byte	255
	.zero	12
x.2398:
	.byte	255
	.byte	255
	.byte	3
	.byte	0
	.zero	12
x.2406:
	.byte	191
	.byte	191
	.byte	255
	.byte	239
	.zero	12
y.2407:
	.byte	255
	.byte	191
	.byte	255
	.byte	223
	.zero	12
x.2410:
	.byte	255
	.byte	191
	.byte	255
	.byte	239
	.zero	12
y.2411:
	.byte	255
	.byte	191
	.byte	239
	.byte	223
	.zero	12
x.2414:
	.byte	223
	.byte	191
	.byte	251
	.byte	239
	.zero	12
y.2415:
	.byte	247
	.byte	191
	.byte	239
	.byte	223
	.zero	12
x.2418:
	.byte	0
	.byte	192
	.byte	255
	.byte	255
	.zero	12
x.2431:
	.byte	238
	.byte	255
	.byte	255
	.byte	254
	.zero	12
y.2432:
	.byte	254
	.byte	255
	.byte	255
	.byte	223
	.zero	12
x.2435:
	.byte	238
	.byte	255
	.byte	255
	.byte	255
	.zero	12
y.2436:
	.byte	190
	.byte	255
	.byte	255
	.byte	223
	.zero	12
x.2439:
	.byte	238
	.byte	254
	.byte	127
	.byte	255
	.zero	12
y.2440:
	.byte	190
	.byte	255
	.byte	253
	.byte	223
	.zero	12
x.2443:
	.byte	14
	.byte	2
	.byte	64
	.byte	0
	.zero	12
y.2444:
	.byte	0
	.byte	2
	.byte	64
	.byte	208
	.zero	12
x.2447:
	.byte	14
	.byte	32
	.byte	0
	.byte	4
	.zero	12
y.2448:
	.byte	32
	.byte	0
	.byte	4
	.byte	208
	.zero	12
x.2451:
	.byte	14
	.byte	226
	.byte	67
	.byte	244
	.zero	12
y.2452:
	.byte	47
	.byte	194
	.byte	71
	.byte	208
	.zero	12
x.2455:
	.byte	254
	.byte	34
	.byte	124
	.byte	4
	.zero	12
y.2456:
	.byte	32
	.byte	62
	.byte	68
	.byte	223
	.zero	12
x.2469:
	.byte	191
	.byte	191
	.byte	255
	.byte	239
	.zero	12
y.2470:
	.byte	253
	.byte	255
	.byte	251
	.byte	255
	.zero	12
x.2473:
	.byte	255
	.byte	191
	.byte	255
	.byte	239
	.zero	12
y.2474:
	.byte	253
	.byte	255
	.byte	251
	.byte	254
	.zero	12
x.2477:
	.byte	223
	.byte	191
	.byte	251
	.byte	239
	.zero	12
y.2478:
	.byte	125
	.byte	255
	.byte	251
	.byte	254
	.zero	12
x.2481:
	.byte	16
	.byte	0
	.byte	8
	.byte	224
	.zero	12
y.2482:
	.byte	13
	.byte	16
	.byte	0
	.byte	8
	.zero	12
x.2485:
	.byte	0
	.byte	1
	.byte	128
	.byte	224
	.zero	12
y.2486:
	.byte	13
	.byte	1
	.byte	128
	.byte	0
	.zero	12
x.2489:
	.byte	16
	.byte	61
	.byte	136
	.byte	239
	.zero	12
y.2490:
	.byte	253
	.byte	17
	.byte	188
	.byte	8
	.zero	12
x.2493:
	.byte	31
	.byte	193
	.byte	139
	.byte	224
	.zero	12
y.2494:
	.byte	13
	.byte	209
	.byte	131
	.byte	248
	.zero	12
