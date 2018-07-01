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
c:
	.byte	52
s:
	.value	4660
i:
	.long	4660
l:
	.quad	305419896
ll:
	.quad	81985529234382576
shift1:
	.long	4
shift2:
	.long	60
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	c(%rip), %eax
	movsbl	%al, %edx
	movl	shift1(%rip), %eax
	sarx	%eax, %edx, %esi
	movzbl	c(%rip), %eax
	movsbl	%al, %edx
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
	movzbl	c(%rip), %eax
	sarb	$4, %al
	movsbl	%al, %eax
	movzbl	c(%rip), %edx
	movsbl	%dl, %edx
	sall	$4, %edx
	orl	%edx, %eax
	cmpl	$835, %eax
	je	L11
	call	abort
L11:
	movzwl	s(%rip), %eax
	movswl	%ax, %edx
	movl	shift1(%rip), %eax
	sarx	%eax, %edx, %esi
	movzwl	s(%rip), %eax
	movswl	%ax, %edx
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
	movzwl	s(%rip), %eax
	sarw	$4, %ax
	cwtl
	movzwl	s(%rip), %edx
	movswl	%dx, %edx
	sall	$12, %edx
	orl	%edx, %eax
	cmpl	$19087651, %eax
	je	L13
	call	abort
L13:
	movl	i(%rip), %edx
	movl	shift1(%rip), %eax
	sarx	%eax, %edx, %esi
	movl	i(%rip), %edx
	movl	shift1(%rip), %eax
	movl	$32, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	shlx	%eax, %edx, %eax
	orl	%esi, %eax
	cmpl	$1073742115, %eax
	je	L14
	call	abort
L14:
	movl	i(%rip), %eax
	sarl	$4, %eax
	movl	%eax, %edx
	movl	i(%rip), %eax
	sall	$28, %eax
	orl	%edx, %eax
	cmpl	$1073742115, %eax
	je	L15
	call	abort
L15:
	movq	l(%rip), %rdx
	movl	shift1(%rip), %eax
	sarx	%rax, %rdx, %rsi
	movq	l(%rip), %rdx
	movl	shift1(%rip), %eax
	movl	$64, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	shlx	%rax, %rdx, %rax
	orq	%rax, %rsi
	movq	%rsi, %rdx
	movabsq	$-9223372036835687065, %rax
	cmpq	%rax, %rdx
	je	L16
	call	abort
L16:
	movq	l(%rip), %rax
	sarq	$4, %rax
	movq	%rax, %rdx
	movq	l(%rip), %rax
	salq	$60, %rax
	orq	%rax, %rdx
	movabsq	$-9223372036835687065, %rax
	cmpq	%rax, %rdx
	je	L17
	call	abort
L17:
	movq	ll(%rip), %rdx
	movl	shift1(%rip), %eax
	sarx	%rax, %rdx, %rsi
	movq	ll(%rip), %rdx
	movl	shift1(%rip), %eax
	movl	$64, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	shlx	%rax, %rdx, %rax
	orq	%rax, %rsi
	movq	%rsi, %rdx
	movabsq	$5124095577148911, %rax
	cmpq	%rax, %rdx
	je	L18
	call	abort
L18:
	movq	ll(%rip), %rax
	sarq	$4, %rax
	movq	%rax, %rdx
	movq	ll(%rip), %rax
	salq	$60, %rax
	orq	%rax, %rdx
	movabsq	$5124095577148911, %rax
	cmpq	%rax, %rdx
	je	L19
	call	abort
L19:
	movq	ll(%rip), %rdx
	movl	shift2(%rip), %eax
	sarx	%rax, %rdx, %rsi
	movq	ll(%rip), %rdx
	movl	shift2(%rip), %eax
	movl	$64, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	shlx	%rax, %rdx, %rax
	orq	%rax, %rsi
	movq	%rsi, %rdx
	movabsq	$1311768467750121216, %rax
	cmpq	%rax, %rdx
	je	L20
	call	abort
L20:
	movq	ll(%rip), %rax
	sarq	$60, %rax
	movq	%rax, %rdx
	movq	ll(%rip), %rax
	salq	$4, %rax
	orq	%rax, %rdx
	movabsq	$1311768467750121216, %rax
	cmpq	%rax, %rdx
	je	L21
	call	abort
L21:
	movzbl	c(%rip), %eax
	movsbl	%al, %edx
	movl	shift1(%rip), %eax
	shlx	%eax, %edx, %esi
	movzbl	c(%rip), %eax
	movsbl	%al, %edx
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
	movzbl	c(%rip), %eax
	movsbl	%al, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movzbl	c(%rip), %eax
	sarb	$4, %al
	movsbl	%al, %eax
	orl	%edx, %eax
	cmpl	$835, %eax
	je	L23
	call	abort
L23:
	movzwl	s(%rip), %eax
	movswl	%ax, %edx
	movl	shift1(%rip), %eax
	shlx	%eax, %edx, %esi
	movzwl	s(%rip), %eax
	movswl	%ax, %edx
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
	movzwl	s(%rip), %eax
	cwtl
	sall	$4, %eax
	movl	%eax, %edx
	movzwl	s(%rip), %eax
	sarw	$12, %ax
	cwtl
	orl	%edx, %eax
	cmpl	$74561, %eax
	je	L25
	call	abort
L25:
	movl	i(%rip), %edx
	movl	shift1(%rip), %eax
	shlx	%eax, %edx, %esi
	movl	i(%rip), %edx
	movl	shift1(%rip), %eax
	movl	$32, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sarx	%eax, %edx, %eax
	orl	%esi, %eax
	cmpl	$74560, %eax
	je	L26
	call	abort
L26:
	movl	i(%rip), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	i(%rip), %eax
	sarl	$28, %eax
	orl	%edx, %eax
	cmpl	$74560, %eax
	je	L27
	call	abort
L27:
	movq	l(%rip), %rdx
	movl	shift1(%rip), %eax
	shlx	%rax, %rdx, %rsi
	movq	l(%rip), %rdx
	movl	shift1(%rip), %eax
	movl	$64, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sarx	%rax, %rdx, %rax
	orq	%rax, %rsi
	movq	%rsi, %rdx
	movabsq	$4886718336, %rax
	cmpq	%rax, %rdx
	je	L28
	call	abort
L28:
	movq	l(%rip), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	l(%rip), %rax
	sarq	$60, %rax
	orq	%rax, %rdx
	movabsq	$4886718336, %rax
	cmpq	%rax, %rdx
	je	L29
	call	abort
L29:
	movq	ll(%rip), %rdx
	movl	shift1(%rip), %eax
	shlx	%rax, %rdx, %rsi
	movq	ll(%rip), %rdx
	movl	shift1(%rip), %eax
	movl	$64, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sarx	%rax, %rdx, %rax
	orq	%rax, %rsi
	movq	%rsi, %rdx
	movabsq	$1311768467750121216, %rax
	cmpq	%rax, %rdx
	je	L30
	call	abort
L30:
	movq	ll(%rip), %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	ll(%rip), %rax
	sarq	$60, %rax
	orq	%rax, %rdx
	movabsq	$1311768467750121216, %rax
	cmpq	%rax, %rdx
	je	L31
	call	abort
L31:
	movq	ll(%rip), %rdx
	movl	shift2(%rip), %eax
	shlx	%rax, %rdx, %rsi
	movq	ll(%rip), %rdx
	movl	shift2(%rip), %eax
	movl	$64, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	sarx	%rax, %rdx, %rax
	orq	%rax, %rsi
	movq	%rsi, %rdx
	movabsq	$5124095577148911, %rax
	cmpq	%rax, %rdx
	je	L32
	call	abort
L32:
	movq	ll(%rip), %rax
	salq	$60, %rax
	movq	%rax, %rdx
	movq	ll(%rip), %rax
	sarq	$4, %rax
	orq	%rax, %rdx
	movabsq	$5124095577148911, %rax
	cmpq	%rax, %rdx
	je	L33
	call	abort
L33:
	movl	$0, %edi
	call	exit
