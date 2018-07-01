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
deadfish:
	.long	-559025835
cfb_tab8_be:
	.long	0
	.long	255
	.long	65280
	.long	65535
	.long	16711680
	.long	16711935
	.long	16776960
	.long	16777215
	.long	-16777216
	.long	-16776961
	.long	-16711936
	.long	-16711681
	.long	-65536
	.long	-65281
	.long	-256
	.long	-1
cfb_tab8_le:
	.long	0
	.long	-16777216
	.long	16711680
	.long	-65536
	.long	65280
	.long	-16711936
	.long	16776960
	.long	-256
	.long	255
	.long	-16776961
	.long	16711935
	.long	-65281
	.long	65535
	.long	-16711681
	.long	16777215
	.long	-1
cfb_tab16_be:
	.long	0
	.long	65535
	.long	-65536
	.long	-1
cfb_tab16_le:
	.long	0
	.long	-65536
	.long	65535
	.long	-1
cfb_tab32:
	.long	0
	.long	-1
xxx:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	cmpl	$8, %eax
	je	L11
	cmpl	$16, %eax
	je	L12
	jmp	L15
L11:
	movq	$cfb_tab8_be, -8(%rbp)
	jmp	L13
L12:
	movq	$cfb_tab16_be, -8(%rbp)
	jmp	L13
L15:
	movq	$cfb_tab32, -8(%rbp)
	nop
L13:
	movq	-8(%rbp), %rax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$8, %edi
	call	xxx
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %edx
	movl	$0, %eax
	cmpl	%eax, %edx
	je	L17
	call	abort
L17:
	movl	$0, %eax
	leave
	ret
