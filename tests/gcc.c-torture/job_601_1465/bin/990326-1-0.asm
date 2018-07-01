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
a1:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	x.2259(%rip), %eax
	movzbl	y.2260(%rip), %edx
	andl	$-65, %edx
	cmpb	%dl, %al
	jne	L10
	movzbl	x.2259+1(%rip), %edx
	movzbl	y.2260+1(%rip), %eax
	cmpb	%al, %dl
	jne	L10
	movl	$1, %eax
	jmp	L11
L10:
	movl	$0, %eax
L11:
	popq	%rbp
	ret
a2:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	x.2263(%rip), %edx
	movzbl	y.2264(%rip), %eax
	cmpb	%al, %dl
	jne	L14
	movzbl	x.2263+1(%rip), %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movzbl	y.2264+1(%rip), %eax
	cmpb	%al, %dl
	jne	L14
	movl	$1, %eax
	jmp	L15
L14:
	movl	$0, %eax
L15:
	popq	%rbp
	ret
a3:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	x.2267(%rip), %eax
	andl	$-9, %eax
	movl	%eax, %edx
	movzbl	y.2268(%rip), %eax
	andl	$-33, %eax
	cmpb	%al, %dl
	jne	L18
	movzbl	x.2267+1(%rip), %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movzbl	y.2268+1(%rip), %eax
	andl	$-17, %eax
	cmpb	%al, %dl
	jne	L18
	movl	$1, %eax
	jmp	L19
L18:
	movl	$0, %eax
L19:
	popq	%rbp
	ret
b1:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2275+6(%rip), %eax
	movzwl	y.2276+6(%rip), %edx
	andl	$-65, %edx
	cmpw	%dx, %ax
	jne	L22
	movzwl	x.2275+4(%rip), %edx
	movzwl	y.2276+4(%rip), %eax
	cmpw	%ax, %dx
	jne	L22
	movl	$1, %eax
	jmp	L23
L22:
	movl	$0, %eax
L23:
	popq	%rbp
	ret
b2:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2279+6(%rip), %edx
	movzwl	y.2280+6(%rip), %eax
	cmpw	%ax, %dx
	jne	L26
	movzwl	x.2279+4(%rip), %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movzwl	y.2280+4(%rip), %eax
	cmpw	%ax, %dx
	jne	L26
	movl	$1, %eax
	jmp	L27
L26:
	movl	$0, %eax
L27:
	popq	%rbp
	ret
b3:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2283+6(%rip), %eax
	andl	$-9, %eax
	movl	%eax, %edx
	movzwl	y.2284+6(%rip), %eax
	andl	$-33, %eax
	cmpw	%ax, %dx
	jne	L30
	movzwl	x.2283+4(%rip), %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movzwl	y.2284+4(%rip), %eax
	andl	$-17, %eax
	cmpw	%ax, %dx
	jne	L30
	movl	$1, %eax
	jmp	L31
L30:
	movl	$0, %eax
L31:
	popq	%rbp
	ret
c1:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2292+2(%rip), %eax
	shrw	$2, %ax
	movzwl	%ax, %eax
	movzwl	y.2293+2(%rip), %edx
	shrw	$2, %dx
	movzwl	%dx, %edx
	andl	$-65, %edx
	cmpl	%edx, %eax
	jne	L34
	movl	x.2292(%rip), %eax
	shrl	$4, %eax
	movl	%eax, %edx
	andw	$16383, %dx
	movl	y.2293(%rip), %eax
	shrl	$4, %eax
	andw	$16383, %ax
	cmpw	%ax, %dx
	jne	L34
	movl	$1, %eax
	jmp	L35
L34:
	movl	$0, %eax
L35:
	popq	%rbp
	ret
c2:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2296+2(%rip), %eax
	shrw	$2, %ax
	movl	%eax, %edx
	movzwl	y.2297+2(%rip), %eax
	shrw	$2, %ax
	cmpw	%ax, %dx
	jne	L38
	movl	x.2296(%rip), %eax
	shrl	$4, %eax
	andw	$16383, %ax
	movzwl	%ax, %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movl	y.2297(%rip), %eax
	shrl	$4, %eax
	andw	$16383, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jne	L38
	movl	$1, %eax
	jmp	L39
L38:
	movl	$0, %eax
L39:
	popq	%rbp
	ret
c3:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2300+2(%rip), %eax
	shrw	$2, %ax
	movzwl	%ax, %eax
	andl	$-9, %eax
	movl	%eax, %edx
	movzwl	y.2301+2(%rip), %eax
	shrw	$2, %ax
	movzwl	%ax, %eax
	andl	$-33, %eax
	cmpl	%eax, %edx
	jne	L42
	movl	x.2300(%rip), %eax
	shrl	$4, %eax
	andw	$16383, %ax
	movzwl	%ax, %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movl	y.2301(%rip), %eax
	shrl	$4, %eax
	andw	$16383, %ax
	movzwl	%ax, %eax
	andl	$-17, %eax
	cmpl	%eax, %edx
	jne	L42
	movl	$1, %eax
	jmp	L43
L42:
	movl	$0, %eax
L43:
	popq	%rbp
	ret
d1:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2309(%rip), %eax
	andw	$16383, %ax
	movzwl	%ax, %eax
	movzwl	y.2310(%rip), %edx
	andw	$16383, %dx
	movzwl	%dx, %edx
	andl	$-65, %edx
	cmpl	%edx, %eax
	jne	L46
	movl	x.2309(%rip), %eax
	shrl	$14, %eax
	movl	%eax, %edx
	andw	$16383, %dx
	movl	y.2310(%rip), %eax
	shrl	$14, %eax
	andw	$16383, %ax
	cmpw	%ax, %dx
	jne	L46
	movl	$1, %eax
	jmp	L47
L46:
	movl	$0, %eax
L47:
	popq	%rbp
	ret
d2:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2313(%rip), %eax
	andw	$16383, %ax
	movl	%eax, %edx
	movzwl	y.2314(%rip), %eax
	andw	$16383, %ax
	cmpw	%ax, %dx
	jne	L50
	movl	x.2313(%rip), %eax
	shrl	$14, %eax
	andw	$16383, %ax
	movzwl	%ax, %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movl	y.2314(%rip), %eax
	shrl	$14, %eax
	andw	$16383, %ax
	movzwl	%ax, %eax
	cmpl	%eax, %edx
	jne	L50
	movl	$1, %eax
	jmp	L51
L50:
	movl	$0, %eax
L51:
	popq	%rbp
	ret
d3:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2317(%rip), %eax
	andw	$16383, %ax
	movzwl	%ax, %eax
	andl	$-9, %eax
	movl	%eax, %edx
	movzwl	y.2318(%rip), %eax
	andw	$16383, %ax
	movzwl	%ax, %eax
	andl	$-33, %eax
	cmpl	%eax, %edx
	jne	L54
	movl	x.2317(%rip), %eax
	shrl	$14, %eax
	andw	$16383, %ax
	movzwl	%ax, %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movl	y.2318(%rip), %eax
	shrl	$14, %eax
	andw	$16383, %ax
	movzwl	%ax, %eax
	andl	$-17, %eax
	cmpl	%eax, %edx
	jne	L54
	movl	$1, %eax
	jmp	L55
L54:
	movl	$0, %eax
L55:
	popq	%rbp
	ret
e1:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2326+2(%rip), %eax
	sarw	$2, %ax
	movl	%eax, %edx
	movzwl	y.2327+2(%rip), %eax
	sarw	$2, %ax
	andl	$-65, %eax
	cmpw	%ax, %dx
	jne	L58
	movl	x.2326(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	movl	%eax, %edx
	movl	y.2327(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	cmpw	%ax, %dx
	jne	L58
	movl	$1, %eax
	jmp	L59
L58:
	movl	$0, %eax
L59:
	popq	%rbp
	ret
e2:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2330+2(%rip), %eax
	sarw	$2, %ax
	movl	%eax, %edx
	movzwl	y.2331+2(%rip), %eax
	sarw	$2, %ax
	cmpw	%ax, %dx
	jne	L62
	movl	x.2330(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movl	y.2331(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	cmpw	%ax, %dx
	jne	L62
	movl	$1, %eax
	jmp	L63
L62:
	movl	$0, %eax
L63:
	popq	%rbp
	ret
e3:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2334+2(%rip), %eax
	sarw	$2, %ax
	andl	$-9, %eax
	movl	%eax, %edx
	movzwl	y.2335+2(%rip), %eax
	sarw	$2, %ax
	andl	$-33, %eax
	cmpw	%ax, %dx
	jne	L66
	movl	x.2334(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movl	y.2335(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	andl	$-17, %eax
	cmpw	%ax, %dx
	jne	L66
	movl	$1, %eax
	jmp	L67
L66:
	movl	$0, %eax
L67:
	popq	%rbp
	ret
e4:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2338+2(%rip), %eax
	andl	$-4, %eax
	testw	%ax, %ax
	jne	L70
	movl	x.2338(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	cwtl
	andl	$8192, %eax
	testl	%eax, %eax
	je	L70
	movl	$1, %eax
	jmp	L71
L70:
	movl	$0, %eax
L71:
	popq	%rbp
	ret
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2346(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	movzwl	y.2347(%rip), %edx
	sall	$2, %edx
	sarw	$2, %dx
	andl	$-65, %edx
	cmpw	%dx, %ax
	jne	L74
	movl	x.2346(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	movl	%eax, %edx
	movl	y.2347(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	cmpw	%ax, %dx
	jne	L74
	movl	$1, %eax
	jmp	L75
L74:
	movl	$0, %eax
L75:
	popq	%rbp
	ret
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2350(%rip), %eax
	leal	0(,%rax,4), %edx
	sarw	$2, %dx
	movzwl	y.2351(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	cmpw	%ax, %dx
	jne	L78
	movl	x.2350(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movl	y.2351(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	cmpw	%ax, %dx
	jne	L78
	movl	$1, %eax
	jmp	L79
L78:
	movl	$0, %eax
L79:
	popq	%rbp
	ret
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2354(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	andl	$-9, %eax
	movl	%eax, %edx
	movzwl	y.2355(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	andl	$-33, %eax
	cmpw	%ax, %dx
	jne	L82
	movl	x.2354(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movl	y.2355(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	andl	$-17, %eax
	cmpw	%ax, %dx
	jne	L82
	movl	$1, %eax
	jmp	L83
L82:
	movl	$0, %eax
L83:
	popq	%rbp
	ret
f4:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2358(%rip), %eax
	andw	$16383, %ax
	testw	%ax, %ax
	jne	L86
	movl	x.2358(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	cwtl
	andl	$8192, %eax
	testl	%eax, %eax
	je	L86
	movl	$1, %eax
	jmp	L87
L86:
	movl	$0, %eax
L87:
	popq	%rbp
	ret
g1:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2371+2(%rip), %eax
	sarw	$2, %ax
	movl	%eax, %edx
	movl	y.2372(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	andl	$-65, %eax
	cmpw	%ax, %dx
	jne	L90
	movl	x.2371(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	movl	%eax, %edx
	movzwl	y.2372(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	cmpw	%ax, %dx
	jne	L90
	movl	$1, %eax
	jmp	L91
L90:
	movl	$0, %eax
L91:
	popq	%rbp
	ret
g2:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2375+2(%rip), %eax
	sarw	$2, %ax
	movl	%eax, %edx
	movl	y.2376(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	cmpw	%ax, %dx
	jne	L94
	movl	x.2375(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movzwl	y.2376(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	cmpw	%ax, %dx
	jne	L94
	movl	$1, %eax
	jmp	L95
L94:
	movl	$0, %eax
L95:
	popq	%rbp
	ret
g3:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2379+2(%rip), %eax
	sarw	$2, %ax
	andl	$-9, %eax
	movl	%eax, %edx
	movl	y.2380(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	andl	$-33, %eax
	cmpw	%ax, %dx
	jne	L98
	movl	x.2379(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movzwl	y.2380(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	andl	$-17, %eax
	cmpw	%ax, %dx
	jne	L98
	movl	$1, %eax
	jmp	L99
L98:
	movl	$0, %eax
L99:
	popq	%rbp
	ret
g4:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2383+2(%rip), %eax
	sarw	$2, %ax
	cwtl
	andl	$240, %eax
	movl	%eax, %edx
	movl	y.2384(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	cwtl
	andl	$3840, %eax
	cmpl	%eax, %edx
	jne	L102
	movl	x.2383(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	cwtl
	andl	$240, %eax
	movl	%eax, %edx
	movzwl	y.2384(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	cwtl
	andl	$3840, %eax
	cmpl	%eax, %edx
	jne	L102
	movl	$1, %eax
	jmp	L103
L102:
	movl	$0, %eax
L103:
	popq	%rbp
	ret
g5:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2387+2(%rip), %eax
	sarw	$2, %ax
	cwtl
	andl	$3840, %eax
	movl	%eax, %edx
	movl	y.2388(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	cwtl
	andl	$240, %eax
	cmpl	%eax, %edx
	jne	L106
	movl	x.2387(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	cwtl
	andl	$3840, %eax
	movl	%eax, %edx
	movzwl	y.2388(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	cwtl
	andl	$240, %eax
	cmpl	%eax, %edx
	jne	L106
	movl	$1, %eax
	jmp	L107
L106:
	movl	$0, %eax
L107:
	popq	%rbp
	ret
g6:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2391+2(%rip), %eax
	sarw	$2, %ax
	cwtl
	andl	$1023, %eax
	movl	%eax, %edx
	movl	y.2392(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	cwtl
	andl	$16368, %eax
	cmpl	%eax, %edx
	jne	L110
	movl	x.2391(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	cwtl
	andl	$1023, %eax
	movl	%eax, %edx
	movzwl	y.2392(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	cwtl
	andl	$16368, %eax
	cmpl	%eax, %edx
	jne	L110
	movl	$1, %eax
	jmp	L111
L110:
	movl	$0, %eax
L111:
	popq	%rbp
	ret
g7:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2395+2(%rip), %eax
	sarw	$2, %ax
	cwtl
	andl	$16368, %eax
	movl	%eax, %edx
	movl	y.2396(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	cwtl
	andl	$1023, %eax
	cmpl	%eax, %edx
	jne	L114
	movl	x.2395(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	cwtl
	andl	$16368, %eax
	movl	%eax, %edx
	movzwl	y.2396(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	cwtl
	andl	$1023, %eax
	cmpl	%eax, %edx
	jne	L114
	movl	$1, %eax
	jmp	L115
L114:
	movl	$0, %eax
L115:
	popq	%rbp
	ret
h1:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2409(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	movl	y.2410(%rip), %edx
	sall	$14, %edx
	sarl	$18, %edx
	andl	$-65, %edx
	cmpw	%dx, %ax
	jne	L118
	movl	x.2409(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	movzwl	y.2410+2(%rip), %edx
	sarw	$2, %dx
	cmpw	%dx, %ax
	jne	L118
	movl	$1, %eax
	jmp	L119
L118:
	movl	$0, %eax
L119:
	popq	%rbp
	ret
h2:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2413(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	movl	y.2414(%rip), %edx
	sall	$14, %edx
	sarl	$18, %edx
	cmpw	%dx, %ax
	jne	L122
	movl	x.2413(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movzwl	y.2414+2(%rip), %eax
	sarw	$2, %ax
	cmpw	%ax, %dx
	jne	L122
	movl	$1, %eax
	jmp	L123
L122:
	movl	$0, %eax
L123:
	popq	%rbp
	ret
h3:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2417(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	andl	$-9, %eax
	movl	%eax, %edx
	movl	y.2418(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	andl	$-33, %eax
	cmpw	%ax, %dx
	jne	L126
	movl	x.2417(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	andl	$-65, %eax
	movl	%eax, %edx
	movzwl	y.2418+2(%rip), %eax
	sarw	$2, %ax
	andl	$-17, %eax
	cmpw	%ax, %dx
	jne	L126
	movl	$1, %eax
	jmp	L127
L126:
	movl	$0, %eax
L127:
	popq	%rbp
	ret
h4:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2421(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	cwtl
	andl	$240, %eax
	movl	%eax, %edx
	movl	y.2422(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	cwtl
	andl	$3840, %eax
	cmpl	%eax, %edx
	jne	L130
	movl	x.2421(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	cwtl
	andl	$240, %eax
	movl	%eax, %edx
	movzwl	y.2422+2(%rip), %eax
	sarw	$2, %ax
	cwtl
	andl	$3840, %eax
	cmpl	%eax, %edx
	jne	L130
	movl	$1, %eax
	jmp	L131
L130:
	movl	$0, %eax
L131:
	popq	%rbp
	ret
h5:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2425(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	cwtl
	andl	$3840, %eax
	movl	%eax, %edx
	movl	y.2426(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	cwtl
	andl	$240, %eax
	cmpl	%eax, %edx
	jne	L134
	movl	x.2425(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	cwtl
	andl	$3840, %eax
	movl	%eax, %edx
	movzwl	y.2426+2(%rip), %eax
	sarw	$2, %ax
	cwtl
	andl	$240, %eax
	cmpl	%eax, %edx
	jne	L134
	movl	$1, %eax
	jmp	L135
L134:
	movl	$0, %eax
L135:
	popq	%rbp
	ret
h6:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2429(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	cwtl
	andl	$1023, %eax
	movl	%eax, %edx
	movl	y.2430(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	cwtl
	andl	$16368, %eax
	cmpl	%eax, %edx
	jne	L138
	movl	x.2429(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	cwtl
	andl	$1023, %eax
	movl	%eax, %edx
	movzwl	y.2430+2(%rip), %eax
	sarw	$2, %ax
	cwtl
	andl	$16368, %eax
	cmpl	%eax, %edx
	jne	L138
	movl	$1, %eax
	jmp	L139
L138:
	movl	$0, %eax
L139:
	popq	%rbp
	ret
h7:
	pushq	%rbp
	movq	%rsp, %rbp
	movzwl	x.2433(%rip), %eax
	sall	$2, %eax
	sarw	$2, %ax
	cwtl
	andl	$16368, %eax
	movl	%eax, %edx
	movl	y.2434(%rip), %eax
	sall	$14, %eax
	sarl	$18, %eax
	cwtl
	andl	$1023, %eax
	cmpl	%eax, %edx
	jne	L142
	movl	x.2433(%rip), %eax
	sall	$4, %eax
	sarl	$18, %eax
	cwtl
	andl	$16368, %eax
	movl	%eax, %edx
	movzwl	y.2434+2(%rip), %eax
	sarw	$2, %ax
	cwtl
	andl	$1023, %eax
	cmpl	%eax, %edx
	jne	L142
	movl	$1, %eax
	jmp	L143
L142:
	movl	$0, %eax
L143:
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	a1
	testl	%eax, %eax
	jne	L146
	call	abort
L146:
	movl	$0, %eax
	call	a2
	testl	%eax, %eax
	jne	L147
	call	abort
L147:
	movl	$0, %eax
	call	a3
	testl	%eax, %eax
	jne	L148
	call	abort
L148:
	movl	$0, %eax
	call	b1
	testl	%eax, %eax
	jne	L149
	call	abort
L149:
	movl	$0, %eax
	call	b2
	testl	%eax, %eax
	jne	L150
	call	abort
L150:
	movl	$0, %eax
	call	b3
	testl	%eax, %eax
	jne	L151
	call	abort
L151:
	movl	$0, %eax
	call	c1
	testl	%eax, %eax
	jne	L152
	call	abort
L152:
	movl	$0, %eax
	call	c2
	testl	%eax, %eax
	jne	L153
	call	abort
L153:
	movl	$0, %eax
	call	c3
	testl	%eax, %eax
	jne	L154
	call	abort
L154:
	movl	$0, %eax
	call	d1
	testl	%eax, %eax
	jne	L155
	call	abort
L155:
	movl	$0, %eax
	call	d2
	testl	%eax, %eax
	jne	L156
	call	abort
L156:
	movl	$0, %eax
	call	d3
	testl	%eax, %eax
	jne	L157
	call	abort
L157:
	movl	$0, %eax
	call	e1
	testl	%eax, %eax
	jne	L158
	call	abort
L158:
	movl	$0, %eax
	call	e2
	testl	%eax, %eax
	jne	L159
	call	abort
L159:
	movl	$0, %eax
	call	e3
	testl	%eax, %eax
	jne	L160
	call	abort
L160:
	movl	$0, %eax
	call	e4
	testl	%eax, %eax
	jne	L161
	call	abort
L161:
	movl	$0, %eax
	call	f1
	testl	%eax, %eax
	jne	L162
	call	abort
L162:
	movl	$0, %eax
	call	f2
	testl	%eax, %eax
	jne	L163
	call	abort
L163:
	movl	$0, %eax
	call	f3
	testl	%eax, %eax
	jne	L164
	call	abort
L164:
	movl	$0, %eax
	call	f4
	testl	%eax, %eax
	jne	L165
	call	abort
L165:
	movl	$0, %eax
	call	g1
	testl	%eax, %eax
	jne	L166
	call	abort
L166:
	movl	$0, %eax
	call	g2
	testl	%eax, %eax
	jne	L167
	call	abort
L167:
	movl	$0, %eax
	call	g3
	testl	%eax, %eax
	jne	L168
	call	abort
L168:
	movl	$0, %eax
	call	g4
	testl	%eax, %eax
	je	L169
	call	abort
L169:
	movl	$0, %eax
	call	g5
	testl	%eax, %eax
	je	L170
	call	abort
L170:
	movl	$0, %eax
	call	g6
	testl	%eax, %eax
	jne	L171
	call	abort
L171:
	movl	$0, %eax
	call	g7
	testl	%eax, %eax
	jne	L172
	call	abort
L172:
	movl	$0, %eax
	call	h1
	testl	%eax, %eax
	jne	L173
	call	abort
L173:
	movl	$0, %eax
	call	h2
	testl	%eax, %eax
	jne	L174
	call	abort
L174:
	movl	$0, %eax
	call	h3
	testl	%eax, %eax
	jne	L175
	call	abort
L175:
	movl	$0, %eax
	call	h4
	testl	%eax, %eax
	je	L176
	call	abort
L176:
	movl	$0, %eax
	call	h5
	testl	%eax, %eax
	je	L177
	call	abort
L177:
	movl	$0, %eax
	call	h6
	testl	%eax, %eax
	jne	L178
	call	abort
L178:
	movl	$0, %eax
	call	h7
	testl	%eax, %eax
	jne	L179
	call	abort
L179:
	movl	$0, %edi
	call	exit
x.2259:
	.byte	1
	.byte	2
	.value	-2
y.2260:
	.byte	65
	.byte	2
	.value	-3
x.2263:
	.byte	1
	.byte	66
	.value	-2
y.2264:
	.byte	1
	.byte	2
	.value	-3
x.2267:
	.byte	9
	.byte	66
	.value	-2
y.2268:
	.byte	33
	.byte	18
	.value	-3
x.2275:
	.long	-2
	.value	2
	.value	1
y.2276:
	.long	-3
	.value	2
	.value	65
x.2279:
	.long	-2
	.value	66
	.value	1
y.2280:
	.long	-3
	.value	2
	.value	1
x.2283:
	.long	-2
	.value	66
	.value	9
y.2284:
	.long	-3
	.value	18
	.value	33
x.2292:
	.byte	46
	.byte	0
	.byte	4
	.byte	0
	.zero	12
y.2293:
	.byte	45
	.byte	0
	.byte	4
	.byte	1
	.zero	12
x.2296:
	.byte	46
	.byte	4
	.byte	4
	.byte	0
	.zero	12
y.2297:
	.byte	45
	.byte	0
	.byte	4
	.byte	0
	.zero	12
x.2300:
	.byte	46
	.byte	4
	.byte	36
	.byte	0
	.zero	12
y.2301:
	.byte	45
	.byte	1
	.byte	132
	.byte	0
	.zero	12
x.2309:
	.byte	1
	.byte	128
	.byte	0
	.byte	224
	.zero	12
y.2310:
	.byte	65
	.byte	128
	.byte	0
	.byte	208
	.zero	12
x.2313:
	.byte	1
	.byte	128
	.byte	16
	.byte	224
	.zero	12
y.2314:
	.byte	1
	.byte	128
	.byte	0
	.byte	208
	.zero	12
x.2317:
	.byte	9
	.byte	128
	.byte	16
	.byte	224
	.zero	12
y.2318:
	.byte	33
	.byte	128
	.byte	4
	.byte	208
	.zero	12
x.2326:
	.byte	238
	.byte	255
	.byte	255
	.byte	254
	.zero	12
y.2327:
	.byte	237
	.byte	255
	.byte	255
	.byte	255
	.zero	12
x.2330:
	.byte	238
	.byte	255
	.byte	255
	.byte	255
	.zero	12
y.2331:
	.byte	237
	.byte	251
	.byte	255
	.byte	255
	.zero	12
x.2334:
	.byte	238
	.byte	254
	.byte	127
	.byte	255
	.zero	12
y.2335:
	.byte	237
	.byte	251
	.byte	223
	.byte	255
	.zero	12
x.2338:
	.byte	255
	.byte	255
	.byte	3
	.byte	0
	.zero	12
x.2346:
	.byte	191
	.byte	191
	.byte	255
	.byte	239
	.zero	12
y.2347:
	.byte	255
	.byte	191
	.byte	255
	.byte	223
	.zero	12
x.2350:
	.byte	255
	.byte	191
	.byte	255
	.byte	239
	.zero	12
y.2351:
	.byte	255
	.byte	191
	.byte	239
	.byte	223
	.zero	12
x.2354:
	.byte	223
	.byte	191
	.byte	251
	.byte	239
	.zero	12
y.2355:
	.byte	247
	.byte	191
	.byte	239
	.byte	223
	.zero	12
x.2358:
	.byte	0
	.byte	192
	.byte	255
	.byte	255
	.zero	12
x.2371:
	.byte	238
	.byte	255
	.byte	255
	.byte	254
	.zero	12
y.2372:
	.byte	254
	.byte	255
	.byte	255
	.byte	223
	.zero	12
x.2375:
	.byte	238
	.byte	255
	.byte	255
	.byte	255
	.zero	12
y.2376:
	.byte	190
	.byte	255
	.byte	255
	.byte	223
	.zero	12
x.2379:
	.byte	238
	.byte	254
	.byte	127
	.byte	255
	.zero	12
y.2380:
	.byte	190
	.byte	255
	.byte	253
	.byte	223
	.zero	12
x.2383:
	.byte	14
	.byte	2
	.byte	64
	.byte	0
	.zero	12
y.2384:
	.byte	0
	.byte	2
	.byte	64
	.byte	208
	.zero	12
x.2387:
	.byte	14
	.byte	32
	.byte	0
	.byte	4
	.zero	12
y.2388:
	.byte	32
	.byte	0
	.byte	4
	.byte	208
	.zero	12
x.2391:
	.byte	14
	.byte	226
	.byte	67
	.byte	244
	.zero	12
y.2392:
	.byte	47
	.byte	194
	.byte	71
	.byte	208
	.zero	12
x.2395:
	.byte	254
	.byte	34
	.byte	124
	.byte	4
	.zero	12
y.2396:
	.byte	32
	.byte	62
	.byte	68
	.byte	223
	.zero	12
x.2409:
	.byte	191
	.byte	191
	.byte	255
	.byte	239
	.zero	12
y.2410:
	.byte	253
	.byte	255
	.byte	251
	.byte	255
	.zero	12
x.2413:
	.byte	255
	.byte	191
	.byte	255
	.byte	239
	.zero	12
y.2414:
	.byte	253
	.byte	255
	.byte	251
	.byte	254
	.zero	12
x.2417:
	.byte	223
	.byte	191
	.byte	251
	.byte	239
	.zero	12
y.2418:
	.byte	125
	.byte	255
	.byte	251
	.byte	254
	.zero	12
x.2421:
	.byte	16
	.byte	0
	.byte	8
	.byte	224
	.zero	12
y.2422:
	.byte	13
	.byte	16
	.byte	0
	.byte	8
	.zero	12
x.2425:
	.byte	0
	.byte	1
	.byte	128
	.byte	224
	.zero	12
y.2426:
	.byte	13
	.byte	1
	.byte	128
	.byte	0
	.zero	12
x.2429:
	.byte	16
	.byte	61
	.byte	136
	.byte	239
	.zero	12
y.2430:
	.byte	253
	.byte	17
	.byte	188
	.byte	8
	.zero	12
x.2433:
	.byte	31
	.byte	193
	.byte	139
	.byte	224
	.zero	12
y.2434:
	.byte	13
	.byte	209
	.byte	131
	.byte	248
	.zero	12
