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
uc:
	.byte	52
us:
	.value	4660
ui:
	.long	4660
ul:
	.quad	305419896
ull:
	.quad	81985529234382576
shift1:
	.long	4
shift2:
	.long	60
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	uc(%rip), %eax
	movzbl	%al, %edx
	movl	shift1(%rip), %eax
	sarx	%eax, %edx, %esi
	movzbl	uc(%rip), %eax
	movzbl	%al, %edx
	movl	shift1(%rip), %eax
	movl	$8, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	shlx	%eax, %edx, %eax
	orl	%esi, %eax
	cmpl	$835, %eax
	je	L40
	call	abort
L40:
	movzbl	uc(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	uc(%rip), %edx
	movzbl	%dl, %edx
	sall	$4, %edx
	orl	%edx, %eax
	cmpl	$835, %eax
	je	L41
	call	abort
L41:
	movzwl	us(%rip), %eax
	movzwl	%ax, %edx
	movl	shift1(%rip), %eax
	sarx	%eax, %edx, %esi
	movzwl	us(%rip), %eax
	movzwl	%ax, %edx
	movl	shift1(%rip), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	shlx	%eax, %edx, %eax
	orl	%esi, %eax
	cmpl	$19087651, %eax
	je	L42
	call	abort
L42:
	movzwl	us(%rip), %eax
	shrw	$4, %ax
	movzwl	%ax, %eax
	movzwl	us(%rip), %edx
	movzwl	%dx, %edx
	sall	$12, %edx
	orl	%edx, %eax
	cmpl	$19087651, %eax
	je	L43
	call	abort
L43:
	movl	ui(%rip), %edx
	movl	shift1(%rip), %eax
	movl	%eax, %ecx
	rorl	%cl, %edx
	movl	%edx, %eax
	cmpl	$1073742115, %eax
	je	L44
	call	abort
L44:
	movl	ui(%rip), %eax
	rorx	$4, %eax, %eax
	cmpl	$1073742115, %eax
	je	L45
	call	abort
L45:
	movq	ul(%rip), %rdx
	movl	shift1(%rip), %eax
	movl	%eax, %ecx
	rorq	%cl, %rdx
	movabsq	$-9223372036835687065, %rax
	cmpq	%rax, %rdx
	je	L46
	call	abort
L46:
	movq	ul(%rip), %rax
	rorx	$4, %rax, %rdx
	movabsq	$-9223372036835687065, %rax
	cmpq	%rax, %rdx
	je	L47
	call	abort
L47:
	movq	ull(%rip), %rdx
	movl	shift1(%rip), %eax
	movl	%eax, %ecx
	rorq	%cl, %rdx
	movabsq	$5124095577148911, %rax
	cmpq	%rax, %rdx
	je	L48
	call	abort
L48:
	movq	ull(%rip), %rax
	rorx	$4, %rax, %rdx
	movabsq	$5124095577148911, %rax
	cmpq	%rax, %rdx
	je	L49
	call	abort
L49:
	movq	ull(%rip), %rdx
	movl	shift2(%rip), %eax
	movl	%eax, %ecx
	rorq	%cl, %rdx
	movabsq	$1311768467750121216, %rax
	cmpq	%rax, %rdx
	je	L50
	call	abort
L50:
	movq	ull(%rip), %rax
	rorx	$60, %rax, %rdx
	movabsq	$1311768467750121216, %rax
	cmpq	%rax, %rdx
	je	L51
	call	abort
L51:
	movzbl	uc(%rip), %eax
	movzbl	%al, %edx
	movl	shift1(%rip), %eax
	shlx	%eax, %edx, %esi
	movzbl	uc(%rip), %eax
	movzbl	%al, %edx
	movl	shift1(%rip), %eax
	movl	$8, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sarx	%eax, %edx, %eax
	orl	%esi, %eax
	cmpl	$835, %eax
	je	L52
	call	abort
L52:
	movzbl	uc(%rip), %eax
	movzbl	%al, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movzbl	uc(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	orl	%edx, %eax
	cmpl	$835, %eax
	je	L53
	call	abort
L53:
	movzwl	us(%rip), %eax
	movzwl	%ax, %edx
	movl	shift1(%rip), %eax
	shlx	%eax, %edx, %esi
	movzwl	us(%rip), %eax
	movzwl	%ax, %edx
	movl	shift1(%rip), %eax
	movl	$16, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sarx	%eax, %edx, %eax
	orl	%esi, %eax
	cmpl	$74561, %eax
	je	L54
	call	abort
L54:
	movzwl	us(%rip), %eax
	movzwl	%ax, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movzwl	us(%rip), %eax
	shrw	$12, %ax
	movzwl	%ax, %eax
	orl	%edx, %eax
	cmpl	$74561, %eax
	je	L55
	call	abort
L55:
	movl	ui(%rip), %edx
	movl	shift1(%rip), %eax
	movl	%eax, %ecx
	roll	%cl, %edx
	movl	%edx, %eax
	cmpl	$74560, %eax
	je	L56
	call	abort
L56:
	movl	ui(%rip), %eax
	rorx	$28, %eax, %eax
	cmpl	$74560, %eax
	je	L57
	call	abort
L57:
	movq	ul(%rip), %rdx
	movl	shift1(%rip), %eax
	movl	%eax, %ecx
	rolq	%cl, %rdx
	movabsq	$4886718336, %rax
	cmpq	%rax, %rdx
	je	L58
	call	abort
L58:
	movq	ul(%rip), %rax
	rorx	$60, %rax, %rdx
	movabsq	$4886718336, %rax
	cmpq	%rax, %rdx
	je	L59
	call	abort
L59:
	movq	ull(%rip), %rdx
	movl	shift1(%rip), %eax
	movl	%eax, %ecx
	rolq	%cl, %rdx
	movabsq	$1311768467750121216, %rax
	cmpq	%rax, %rdx
	je	L60
	call	abort
L60:
	movq	ull(%rip), %rax
	rorx	$60, %rax, %rdx
	movabsq	$1311768467750121216, %rax
	cmpq	%rax, %rdx
	je	L61
	call	abort
L61:
	movq	ull(%rip), %rdx
	movl	shift2(%rip), %eax
	movl	%eax, %ecx
	rolq	%cl, %rdx
	movabsq	$5124095577148911, %rax
	cmpq	%rax, %rdx
	je	L62
	call	abort
L62:
	movq	ull(%rip), %rax
	rorx	$4, %rax, %rdx
	movabsq	$5124095577148911, %rax
	cmpq	%rax, %rdx
	je	L63
	call	abort
L63:
	movl	$0, %edi
	call	exit
