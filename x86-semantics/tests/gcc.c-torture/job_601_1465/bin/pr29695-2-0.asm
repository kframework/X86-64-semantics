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
a:
	.long	128
b:
	.byte	-128
c:
	.quad	2147483648
d:
	.long	-2147483648
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	a(%rip), %eax
	andl	$128, %eax
	popq	%rbp
	ret
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	b(%rip), %eax
	movzbl	%al, %eax
	andl	$128, %eax
	popq	%rbp
	ret
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	b(%rip), %eax
	testb	%al, %al
	jns	L14
	movl	$896, %eax
	jmp	L15
L14:
	movl	$0, %eax
L15:
	popq	%rbp
	ret
f4:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	b(%rip), %eax
	andl	$-128, %eax
	movsbl	%al, %eax
	popq	%rbp
	ret
f5:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	c(%rip), %rax
	andl	$2147483648, %eax
	popq	%rbp
	ret
f6:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	d(%rip), %eax
	movl	%eax, %eax
	andl	$2147483648, %eax
	popq	%rbp
	ret
f7:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	d(%rip), %eax
	testl	%eax, %eax
	jns	L24
	movabsq	$15032385536, %rax
	jmp	L25
L24:
	movl	$0, %eax
L25:
	popq	%rbp
	ret
f8:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	d(%rip), %eax
	andl	$-2147483648, %eax
	cltq
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	call	f1
	cmpl	$128, %eax
	je	L30
	call	abort
L30:
	call	f2
	cmpl	$128, %eax
	je	L31
	call	abort
L31:
	call	f3
	cmpl	$896, %eax
	je	L32
	call	abort
L32:
	call	f4
	cmpl	$-128, %eax
	je	L33
	call	abort
L33:
	call	f5
	movl	$2147483648, %edx
	cmpq	%rdx, %rax
	je	L34
	call	abort
L34:
	call	f6
	movl	$2147483648, %edx
	cmpq	%rdx, %rax
	je	L35
	call	abort
L35:
	call	f7
	movabsq	$15032385536, %rdx
	cmpq	%rdx, %rax
	je	L36
	call	abort
L36:
	call	f8
	cmpq	$-2147483648, %rax
	je	L37
	call	abort
L37:
	movl	$0, %eax
	popq	%rbp
	ret
