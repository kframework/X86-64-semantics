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
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$176, %rsp
	movl	%edi, -164(%rbp)
	movq	%rsi, -176(%rbp)
	vmovaps	LC0(%rip), %xmm0
	vmovaps	%xmm0, -80(%rbp)
	vmovapd	LC1(%rip), %xmm0
	vmovaps	%xmm0, -96(%rbp)
	vmovaps	LC2(%rip), %xmm0
	vaddps	-80(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -112(%rbp)
	vmovaps	LC2(%rip), %xmm0
	vaddps	-80(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -128(%rbp)
	movl	$0, -4(%rbp)
	jmp	L40
L43:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-112(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vucomiss	%xmm3, %xmm2
	jp	L105
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm4
	je	L121
L105:
	call	abort
L121:
	addl	$1, -4(%rbp)
L40:
	cmpl	$3, -4(%rbp)
	jle	L43
	vmovaps	LC2(%rip), %xmm0
	vsubps	-80(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -112(%rbp)
	vmovaps	LC2(%rip), %xmm0
	vsubps	-80(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -128(%rbp)
	movl	$0, -8(%rbp)
	jmp	L44
L47:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-112(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vucomiss	%xmm7, %xmm6
	jp	L106
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vucomiss	%xmm3, %xmm2
	je	L122
L106:
	call	abort
L122:
	addl	$1, -8(%rbp)
L44:
	cmpl	$3, -8(%rbp)
	jle	L47
	vmovaps	-80(%rbp), %xmm0
	vaddps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -112(%rbp)
	vmovaps	-80(%rbp), %xmm0
	vaddps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -128(%rbp)
	movl	$0, -12(%rbp)
	jmp	L48
L51:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-112(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm4
	jp	L107
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vucomiss	%xmm7, %xmm6
	je	L123
L107:
	call	abort
L123:
	addl	$1, -12(%rbp)
L48:
	cmpl	$3, -12(%rbp)
	jle	L51
	vmovaps	LC2(%rip), %xmm0
	vdivps	-80(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -112(%rbp)
	vmovaps	LC2(%rip), %xmm0
	vdivps	-80(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -128(%rbp)
	movl	$0, -16(%rbp)
	jmp	L52
L55:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-112(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-16(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vucomiss	%xmm3, %xmm2
	jp	L108
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm4
	je	L124
L108:
	call	abort
L124:
	addl	$1, -16(%rbp)
L52:
	cmpl	$3, -16(%rbp)
	jle	L55
	vmovaps	LC2(%rip), %xmm0
	vaddps	-80(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -112(%rbp)
	vmovaps	LC2(%rip), %xmm0
	vaddps	-80(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -128(%rbp)
	movl	$0, -20(%rbp)
	jmp	L56
L59:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-112(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vucomiss	%xmm7, %xmm6
	jp	L109
	vmovd	%eax, %xmm2
	vmovd	%edx, %xmm3
	vucomiss	%xmm3, %xmm2
	je	L125
L109:
	call	abort
L125:
	addl	$1, -20(%rbp)
L56:
	cmpl	$3, -20(%rbp)
	jle	L59
	vmovaps	LC3(%rip), %xmm0
	vaddps	-80(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -112(%rbp)
	vmovaps	LC3(%rip), %xmm0
	vaddps	-80(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -128(%rbp)
	movl	$0, -24(%rbp)
	jmp	L60
L63:
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-112(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	vmovd	%eax, %xmm4
	vmovd	%edx, %xmm5
	vucomiss	%xmm5, %xmm4
	jp	L110
	vmovd	%eax, %xmm6
	vmovd	%edx, %xmm7
	vucomiss	%xmm7, %xmm6
	je	L126
L110:
	call	abort
L126:
	addl	$1, -24(%rbp)
L60:
	cmpl	$3, -24(%rbp)
	jle	L63
	vmovaps	-80(%rbp), %xmm0
	vaddps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -112(%rbp)
	vmovaps	-80(%rbp), %xmm0
	vaddps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -128(%rbp)
	movl	$0, -28(%rbp)
	jmp	L64
L67:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-112(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-28(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	vmovd	%eax, %xmm1
	vmovd	%edx, %xmm2
	vucomiss	%xmm2, %xmm1
	jp	L111
	vmovd	%eax, %xmm3
	vmovd	%edx, %xmm4
	vucomiss	%xmm4, %xmm3
	je	L127
L111:
	call	abort
L127:
	addl	$1, -28(%rbp)
L64:
	cmpl	$3, -28(%rbp)
	jle	L67
	vmovaps	-80(%rbp), %xmm0
	vmovaps	LC2(%rip), %xmm1
	vdivps	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, -112(%rbp)
	vmovaps	-80(%rbp), %xmm0
	vmovaps	LC2(%rip), %xmm1
	vdivps	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, -128(%rbp)
	movl	$0, -32(%rbp)
	jmp	L68
L71:
	movl	-32(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-112(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	-32(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	leaq	-128(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %edx
	vmovd	%eax, %xmm5
	vmovd	%edx, %xmm6
	vucomiss	%xmm6, %xmm5
	jp	L112
	vmovd	%eax, %xmm7
	vmovd	%edx, %xmm1
	vucomiss	%xmm1, %xmm7
	je	L128
L112:
	call	abort
L128:
	addl	$1, -32(%rbp)
L68:
	cmpl	$3, -32(%rbp)
	jle	L71
	vmovapd	LC4(%rip), %xmm0
	vaddpd	-96(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -144(%rbp)
	vmovapd	LC4(%rip), %xmm0
	vaddpd	-96(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -160(%rbp)
	movl	$0, -36(%rbp)
	jmp	L72
L75:
	movl	-36(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	-160(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jp	L113
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	je	L129
L113:
	call	abort
L129:
	addl	$1, -36(%rbp)
L72:
	cmpl	$1, -36(%rbp)
	jle	L75
	vmovapd	LC4(%rip), %xmm0
	vsubpd	-96(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -144(%rbp)
	vmovapd	LC4(%rip), %xmm0
	vsubpd	-96(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -160(%rbp)
	movl	$0, -40(%rbp)
	jmp	L76
L79:
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	-160(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	jp	L114
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm2
	vucomisd	%xmm2, %xmm1
	je	L130
L114:
	call	abort
L130:
	addl	$1, -40(%rbp)
L76:
	cmpl	$1, -40(%rbp)
	jle	L79
	vmovapd	-96(%rbp), %xmm0
	vaddpd	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -144(%rbp)
	vmovapd	-96(%rbp), %xmm0
	vaddpd	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -160(%rbp)
	movl	$0, -44(%rbp)
	jmp	L80
L83:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	-160(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vucomisd	%xmm4, %xmm3
	jp	L115
	vmovq	%rax, %xmm5
	vmovq	%rdx, %xmm6
	vucomisd	%xmm6, %xmm5
	je	L131
L115:
	call	abort
L131:
	addl	$1, -44(%rbp)
L80:
	cmpl	$1, -44(%rbp)
	jle	L83
	vmovapd	LC4(%rip), %xmm0
	vdivpd	-96(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -144(%rbp)
	vmovapd	LC4(%rip), %xmm0
	vdivpd	-96(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -160(%rbp)
	movl	$0, -48(%rbp)
	jmp	L84
L87:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	-160(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm7
	jp	L116
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	je	L132
L116:
	call	abort
L132:
	addl	$1, -48(%rbp)
L84:
	cmpl	$1, -48(%rbp)
	jle	L87
	vmovapd	LC4(%rip), %xmm0
	vaddpd	-96(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -144(%rbp)
	vmovapd	LC4(%rip), %xmm0
	vaddpd	-96(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -160(%rbp)
	movl	$0, -52(%rbp)
	jmp	L88
L91:
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	-160(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	jp	L117
	vmovq	%rax, %xmm6
	vmovq	%rdx, %xmm7
	vucomisd	%xmm7, %xmm6
	je	L133
L117:
	call	abort
L133:
	addl	$1, -52(%rbp)
L88:
	cmpl	$1, -52(%rbp)
	jle	L91
	vmovapd	LC5(%rip), %xmm0
	vaddpd	-96(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -144(%rbp)
	vmovapd	LC5(%rip), %xmm0
	vaddpd	-96(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, -160(%rbp)
	movl	$0, -56(%rbp)
	jmp	L92
L95:
	movl	-56(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	-160(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	vmovq	%rax, %xmm1
	vmovq	%rdx, %xmm2
	vucomisd	%xmm2, %xmm1
	jp	L118
	vmovq	%rax, %xmm3
	vmovq	%rdx, %xmm4
	vucomisd	%xmm4, %xmm3
	je	L134
L118:
	call	abort
L134:
	addl	$1, -56(%rbp)
L92:
	cmpl	$1, -56(%rbp)
	jle	L95
	vmovapd	-96(%rbp), %xmm0
	vaddpd	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -144(%rbp)
	vmovapd	-96(%rbp), %xmm0
	vaddpd	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, -160(%rbp)
	movl	$0, -60(%rbp)
	jmp	L96
L99:
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	-160(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	vmovq	%rax, %xmm5
	vmovq	%rdx, %xmm6
	vucomisd	%xmm6, %xmm5
	jp	L119
	vmovq	%rax, %xmm7
	vmovq	%rdx, %xmm1
	vucomisd	%xmm1, %xmm7
	je	L135
L119:
	call	abort
L135:
	addl	$1, -60(%rbp)
L96:
	cmpl	$1, -60(%rbp)
	jle	L99
	vmovapd	-96(%rbp), %xmm0
	vmovapd	LC4(%rip), %xmm1
	vdivpd	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, -144(%rbp)
	vmovapd	-96(%rbp), %xmm0
	vmovapd	LC4(%rip), %xmm1
	vdivpd	%xmm1, %xmm0, %xmm0
	vmovaps	%xmm0, -160(%rbp)
	movl	$0, -64(%rbp)
	jmp	L100
L103:
	movl	-64(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	-144(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	leaq	-160(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	vmovq	%rax, %xmm2
	vmovq	%rdx, %xmm3
	vucomisd	%xmm3, %xmm2
	jp	L120
	vmovq	%rax, %xmm4
	vmovq	%rdx, %xmm5
	vucomisd	%xmm5, %xmm4
	je	L136
L120:
	call	abort
L136:
	addl	$1, -64(%rbp)
L100:
	cmpl	$1, -64(%rbp)
	jle	L103
	movl	$0, %eax
	leave
	ret
LC0:
	.long	1065353216
	.long	1073741824
	.long	1077936128
	.long	1082130432
LC1:
	.long	0
	.long	1072693248
	.long	0
	.long	1073741824
LC2:
	.long	1073741824
	.long	1073741824
	.long	1073741824
	.long	1073741824
LC3:
	.long	3221225472
	.long	3221225472
	.long	3221225472
	.long	3221225472
LC4:
	.long	0
	.long	1073741824
	.long	0
	.long	1073741824
LC5:
	.long	0
	.long	-1073741824
	.long	0
	.long	-1073741824
