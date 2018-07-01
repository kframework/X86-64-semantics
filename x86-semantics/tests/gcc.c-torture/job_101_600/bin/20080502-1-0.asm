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
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	fldt	16(%rbp)
	fstpl	-8(%rbp)
	vmovsd	-8(%rbp), %xmm0
	vmovmskpd	%xmm0, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	L10
	movabsq	$-3958705157555305931, %rax
	movl	$16384, %edx
	jmp	L11
L10:
	movl	$0, %eax
	movl	$0, %edx
L11:
	movq	%rax, -32(%rbp)
	movl	%edx, -24(%rbp)
	fldt	-32(%rbp)
	popq	%rbp
	ret
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movabsq	$-9223372036854775808, %rax
	movl	$49151, %edx
	pushq	%rdx
	pushq	%rax
	call	foo
	addq	$16, %rsp
	fldpi
	fucomip	%st(1), %st
	jp	L19
	fldpi
	fucomip	%st(1), %st
	fstp	%st(0)
	je	L18
	jmp	L17
L19:
	fstp	%st(0)
L17:
	call	abort
L18:
	movl	$0, %eax
	leave
	ret
