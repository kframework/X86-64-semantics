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
	je	L10
	call	abort
L10:
	movzbl	uc(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	movzbl	uc(%rip), %edx
	movzbl	%dl, %edx
	sall	$4, %edx
	orl	%edx, %eax
	cmpl	$835, %eax
	je	L11
	call	abort
L11:
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
	je	L12
	call	abort
L12:
	movzwl	us(%rip), %eax
	shrw	$4, %ax
	movzwl	%ax, %eax
	movzwl	us(%rip), %edx
	movzwl	%dx, %edx
	sall	$12, %edx
	orl	%edx, %eax
	cmpl	$19087651, %eax
	je	L13
	call	abort
L13:
	movl	ui(%rip), %edx
	movl	shift1(%rip), %eax
	movl	%eax, %ecx
	rorl	%cl, %edx
	movl	%edx, %eax
	cmpl	$1073742115, %eax
	je	L14
	call	abort
L14:
	movl	ui(%rip), %eax
	rorx	$4, %eax, %eax
	cmpl	$1073742115, %eax
	je	L15
	call	abort
L15:
	movq	ul(%rip), %rdx
	movl	shift1(%rip), %eax
	movl	%eax, %ecx
	rorq	%cl, %rdx
	movabsq	$-9223372036835687065, %rax
	cmpq	%rax, %rdx
	je	L16
	call	abort
L16:
	movq	ul(%rip), %rax
	rorx	$4, %rax, %rdx
	movabsq	$-9223372036835687065, %rax
	cmpq	%rax, %rdx
	je	L17
	call	abort
L17:
	movq	ull(%rip), %rdx
	movl	shift1(%rip), %eax
	movl	%eax, %ecx
	rorq	%cl, %rdx
	movabsq	$5124095577148911, %rax
	cmpq	%rax, %rdx
	je	L18
	call	abort
L18:
	movq	ull(%rip), %rax
	rorx	$4, %rax, %rdx
	movabsq	$5124095577148911, %rax
	cmpq	%rax, %rdx
	je	L19
	call	abort
L19:
	movq	ull(%rip), %rdx
	movl	shift2(%rip), %eax
	movl	%eax, %ecx
	rorq	%cl, %rdx
	movabsq	$1311768467750121216, %rax
	cmpq	%rax, %rdx
	je	L20
	call	abort
L20:
	movq	ull(%rip), %rax
	rorx	$60, %rax, %rdx
	movabsq	$1311768467750121216, %rax
	cmpq	%rax, %rdx
	je	L21
	call	abort
L21:
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
	je	L22
	call	abort
L22:
	movzbl	uc(%rip), %eax
	movzbl	%al, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movzbl	uc(%rip), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	orl	%edx, %eax
	cmpl	$835, %eax
	je	L23
	call	abort
L23:
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
	je	L24
	call	abort
L24:
	movzwl	us(%rip), %eax
	movzwl	%ax, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movzwl	us(%rip), %eax
	shrw	$12, %ax
	movzwl	%ax, %eax
	orl	%edx, %eax
	cmpl	$74561, %eax
	je	L25
	call	abort
L25:
	movl	ui(%rip), %edx
	movl	shift1(%rip), %eax
	movl	%eax, %ecx
	roll	%cl, %edx
	movl	%edx, %eax
	cmpl	$74560, %eax
	je	L26
	call	abort
L26:
	movl	ui(%rip), %eax
	rorx	$28, %eax, %eax
	cmpl	$74560, %eax
	je	L27
	call	abort
L27:
	movq	ul(%rip), %rdx
	movl	shift1(%rip), %eax
	movl	%eax, %ecx
	rolq	%cl, %rdx
	movabsq	$4886718336, %rax
	cmpq	%rax, %rdx
	je	L28
	call	abort
L28:
	movq	ul(%rip), %rax
	rorx	$60, %rax, %rdx
	movabsq	$4886718336, %rax
	cmpq	%rax, %rdx
	je	L29
	call	abort
L29:
	movq	ull(%rip), %rdx
	movl	shift1(%rip), %eax
	movl	%eax, %ecx
	rolq	%cl, %rdx
	movabsq	$1311768467750121216, %rax
	cmpq	%rax, %rdx
	je	L30
	call	abort
L30:
	movq	ull(%rip), %rax
	rorx	$60, %rax, %rdx
	movabsq	$1311768467750121216, %rax
	cmpq	%rax, %rdx
	je	L31
	call	abort
L31:
	movq	ull(%rip), %rdx
	movl	shift2(%rip), %eax
	movl	%eax, %ecx
	rolq	%cl, %rdx
	movabsq	$5124095577148911, %rax
	cmpq	%rax, %rdx
	je	L32
	call	abort
L32:
	movq	ull(%rip), %rax
	rorx	$4, %rax, %rdx
	movabsq	$5124095577148911, %rax
	cmpq	%rax, %rdx
	je	L33
	call	abort
L33:
	movl	$0, %edi
	call	exit
