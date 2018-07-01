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
	vmovq	%xmm0, -8(%rbp)
	vmovq	%xmm1, -16(%rbp)
	movzbl	-8(%rbp), %eax
	movzbl	-16(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, %edx
	movzbl	-7(%rbp), %eax
	movzbl	-15(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, %ecx
	movzbl	-6(%rbp), %eax
	movzbl	-14(%rbp), %esi
	imull	%esi, %eax
	movl	%eax, %esi
	movzbl	-5(%rbp), %eax
	movzbl	-13(%rbp), %edi
	imull	%edi, %eax
	movl	%eax, %edi
	movzbl	-4(%rbp), %eax
	movzbl	-12(%rbp), %r8d
	imull	%r8d, %eax
	movl	%eax, %r8d
	movzbl	-3(%rbp), %eax
	movzbl	-11(%rbp), %r9d
	imull	%r9d, %eax
	movl	%eax, %r9d
	movzbl	-2(%rbp), %eax
	movzbl	-10(%rbp), %r10d
	imull	%r10d, %eax
	movl	%eax, %r10d
	movzbl	-1(%rbp), %eax
	movzbl	-9(%rbp), %r11d
	imull	%r11d, %eax
	movzbl	%al, %eax
	movzbl	%r10b, %r10d
	salq	$8, %rax
	orq	%r10, %rax
	movzbl	%r9b, %r9d
	salq	$8, %rax
	orq	%r9, %rax
	movzbl	%r8b, %r8d
	salq	$8, %rax
	orq	%r8, %rax
	movzbl	%dil, %edi
	salq	$8, %rax
	orq	%rdi, %rax
	movzbl	%sil, %esi
	salq	$8, %rax
	orq	%rsi, %rax
	movzbl	%cl, %ecx
	salq	$8, %rax
	orq	%rcx, %rax
	movzbl	%dl, %edx
	salq	$8, %rax
	orq	%rdx, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	LC0(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	LC1(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	LC2(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	call	foo
	vmovq	%xmm0, %rax
	movq	%rax, -32(%rbp)
	leaq	-24(%rbp), %rcx
	leaq	-32(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L12
	call	abort
L12:
	movl	$0, %eax
	leave
	ret
LC0:
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
LC1:
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
LC2:
	.byte	3
	.byte	6
	.byte	9
	.byte	12
	.byte	15
	.byte	18
	.byte	21
	.byte	24
