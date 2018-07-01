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
d:
	.long	4026531840
	.long	1083179007
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	d(%rip), %rax
	vmovq	%rax, %xmm0
	call	floor
	vmovq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	d(%rip), %rax
	vmovq	%rax, %xmm0
	call	floor
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm2
	vcvtsd2ss	%xmm2, %xmm1, %xmm1
	vmovss	%xmm1, -12(%rbp)
	movq	-8(%rbp), %rax
	vmovq	%rax, %xmm3
	vcvttsd2si	%xmm3, %eax
	cmpl	$1023, %eax
	jne	L10
	movl	-12(%rbp), %eax
	vmovd	%eax, %xmm4
	vcvttss2si	%xmm4, %eax
	cmpl	$1023, %eax
	je	L11
L10:
	call	abort
L11:
	movl	$0, %eax
	leave
	ret
