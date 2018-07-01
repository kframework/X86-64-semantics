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
uq44444444:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vpextrw	$0, %xmm0, %eax
	shrw	$2, %ax
	movl	%eax, %r10d
	vpextrw	$1, %xmm0, %eax
	shrw	$2, %ax
	movl	%eax, %esi
	vpextrw	$2, %xmm0, %eax
	shrw	$2, %ax
	movl	%eax, %r9d
	vpextrw	$3, %xmm0, %eax
	shrw	$2, %ax
	movl	%eax, %ecx
	vpextrw	$4, %xmm0, %eax
	shrw	$2, %ax
	movl	%eax, %r8d
	vpextrw	$5, %xmm0, %eax
	shrw	$2, %ax
	movl	%eax, %edx
	vpextrw	$6, %xmm0, %eax
	shrw	$2, %ax
	movl	%eax, %edi
	vpextrw	$7, %xmm0, %eax
	shrw	$2, %ax
	vmovd	%r10d, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r9d, %esi
	vmovd	%esi, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r8d, %ecx
	vmovd	%ecx, %xmm0
	vpinsrw	$1, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%edi, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
ur44444444:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vpextrw	$0, %xmm0, %eax
	andl	$3, %eax
	movl	%eax, %r10d
	vpextrw	$1, %xmm0, %eax
	andl	$3, %eax
	movl	%eax, %esi
	vpextrw	$2, %xmm0, %eax
	andl	$3, %eax
	movl	%eax, %r9d
	vpextrw	$3, %xmm0, %eax
	andl	$3, %eax
	movl	%eax, %ecx
	vpextrw	$4, %xmm0, %eax
	andl	$3, %eax
	movl	%eax, %r8d
	vpextrw	$5, %xmm0, %eax
	andl	$3, %eax
	movl	%eax, %edx
	vpextrw	$6, %xmm0, %eax
	andl	$3, %eax
	movl	%eax, %edi
	vpextrw	$7, %xmm0, %eax
	andl	$3, %eax
	vmovd	%r10d, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r9d, %esi
	vmovd	%esi, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r8d, %ecx
	vmovd	%ecx, %xmm0
	vpinsrw	$1, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%edi, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
sq44444444:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vpextrw	$0, %xmm0, %eax
	leal	3(%rax), %edx
	testw	%ax, %ax
	cmovs	%edx, %eax
	sarw	$2, %ax
	movl	%eax, %r10d
	vpextrw	$1, %xmm0, %eax
	leal	3(%rax), %edx
	testw	%ax, %ax
	cmovs	%edx, %eax
	sarw	$2, %ax
	movl	%eax, %esi
	vpextrw	$2, %xmm0, %eax
	leal	3(%rax), %edx
	testw	%ax, %ax
	cmovs	%edx, %eax
	sarw	$2, %ax
	movl	%eax, %r9d
	vpextrw	$3, %xmm0, %eax
	leal	3(%rax), %edx
	testw	%ax, %ax
	cmovs	%edx, %eax
	sarw	$2, %ax
	movl	%eax, %ecx
	vpextrw	$4, %xmm0, %eax
	leal	3(%rax), %edx
	testw	%ax, %ax
	cmovs	%edx, %eax
	sarw	$2, %ax
	movl	%eax, %r8d
	vpextrw	$5, %xmm0, %eax
	leal	3(%rax), %edx
	testw	%ax, %ax
	cmovs	%edx, %eax
	sarw	$2, %ax
	movl	%eax, %edx
	vpextrw	$6, %xmm0, %eax
	leal	3(%rax), %edi
	testw	%ax, %ax
	cmovs	%edi, %eax
	sarw	$2, %ax
	movl	%eax, %edi
	vpextrw	$7, %xmm0, %eax
	leal	3(%rax), %r11d
	testw	%ax, %ax
	cmovs	%r11d, %eax
	sarw	$2, %ax
	vmovd	%r10d, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r9d, %esi
	vmovd	%esi, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r8d, %ecx
	vmovd	%ecx, %xmm0
	vpinsrw	$1, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%edi, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
sr44444444:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vpextrw	$0, %xmm0, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$14, %dx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	movl	%eax, %r11d
	vpextrw	$1, %xmm0, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$14, %dx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	movl	%eax, %edi
	vpextrw	$2, %xmm0, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$14, %dx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	movl	%eax, %r10d
	vpextrw	$3, %xmm0, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$14, %dx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	movl	%eax, %esi
	vpextrw	$4, %xmm0, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$14, %dx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	movl	%eax, %r9d
	vpextrw	$5, %xmm0, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$14, %dx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	vpextrw	$6, %xmm0, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$14, %dx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	movl	%eax, %r8d
	vpextrw	$7, %xmm0, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$14, %dx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	movl	%r11d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %edi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r10d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r9d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%r8d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
uq1428166432128:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vpextrw	$0, %xmm0, %edi
	vpextrw	$1, %xmm0, %eax
	shrw	$2, %ax
	movl	%eax, %esi
	vpextrw	$2, %xmm0, %eax
	shrw	%ax
	movl	%eax, %r10d
	vpextrw	$3, %xmm0, %eax
	shrw	$3, %ax
	movl	%eax, %ecx
	vpextrw	$4, %xmm0, %eax
	shrw	$4, %ax
	movl	%eax, %r9d
	vpextrw	$5, %xmm0, %eax
	shrw	$6, %ax
	movl	%eax, %edx
	vpextrw	$6, %xmm0, %eax
	shrw	$5, %ax
	movl	%eax, %r8d
	vpextrw	$7, %xmm0, %eax
	shrw	$7, %ax
	vmovd	%edi, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r10d, %esi
	vmovd	%esi, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r9d, %ecx
	vmovd	%ecx, %xmm0
	vpinsrw	$1, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%r8d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
ur1428166432128:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vpextrw	$0, %xmm0, %eax
	vpextrw	$1, %xmm0, %eax
	andl	$3, %eax
	movl	%eax, %esi
	vpextrw	$2, %xmm0, %eax
	andl	$1, %eax
	movl	%eax, %r9d
	vpextrw	$3, %xmm0, %eax
	andl	$7, %eax
	movl	%eax, %ecx
	vpextrw	$4, %xmm0, %eax
	andl	$15, %eax
	movl	%eax, %r8d
	vpextrw	$5, %xmm0, %eax
	andl	$63, %eax
	movl	%eax, %edx
	vpextrw	$6, %xmm0, %eax
	andl	$31, %eax
	movl	%eax, %edi
	vpextrw	$7, %xmm0, %eax
	andl	$127, %eax
	movl	$0, %r10d
	vmovd	%r10d, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r9d, %esi
	vmovd	%esi, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r8d, %ecx
	vmovd	%ecx, %xmm0
	vpinsrw	$1, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%edi, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
sq1428166432128:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vpextrw	$0, %xmm0, %r10d
	vpextrw	$1, %xmm0, %eax
	leal	3(%rax), %edx
	testw	%ax, %ax
	cmovs	%edx, %eax
	sarw	$2, %ax
	movl	%eax, %esi
	vpextrw	$2, %xmm0, %eax
	movl	%eax, %edx
	shrw	$15, %dx
	addl	%edx, %eax
	sarw	%ax
	movl	%eax, %r9d
	vpextrw	$3, %xmm0, %eax
	leal	7(%rax), %edx
	testw	%ax, %ax
	cmovs	%edx, %eax
	sarw	$3, %ax
	movl	%eax, %ecx
	vpextrw	$4, %xmm0, %eax
	leal	15(%rax), %edx
	testw	%ax, %ax
	cmovs	%edx, %eax
	sarw	$4, %ax
	movl	%eax, %r8d
	vpextrw	$5, %xmm0, %eax
	leal	63(%rax), %edx
	testw	%ax, %ax
	cmovs	%edx, %eax
	sarw	$6, %ax
	movl	%eax, %edx
	vpextrw	$6, %xmm0, %eax
	leal	31(%rax), %edi
	testw	%ax, %ax
	cmovs	%edi, %eax
	sarw	$5, %ax
	movl	%eax, %edi
	vpextrw	$7, %xmm0, %eax
	leal	127(%rax), %r11d
	testw	%ax, %ax
	cmovs	%r11d, %eax
	sarw	$7, %ax
	vmovd	%r10d, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r9d, %esi
	vmovd	%esi, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r8d, %ecx
	vmovd	%ecx, %xmm0
	vpinsrw	$1, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%edi, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
sr1428166432128:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vpextrw	$0, %xmm0, %eax
	vpextrw	$1, %xmm0, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$14, %dx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	movl	%eax, %edi
	vpextrw	$2, %xmm0, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$15, %dx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	movl	%eax, %r10d
	vpextrw	$3, %xmm0, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$13, %dx
	addl	%edx, %eax
	andl	$7, %eax
	subl	%edx, %eax
	movl	%eax, %esi
	vpextrw	$4, %xmm0, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$12, %dx
	addl	%edx, %eax
	andl	$15, %eax
	subl	%edx, %eax
	movl	%eax, %r9d
	vpextrw	$5, %xmm0, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$10, %dx
	addl	%edx, %eax
	andl	$63, %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	vpextrw	$6, %xmm0, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$11, %dx
	addl	%edx, %eax
	andl	$31, %eax
	subl	%edx, %eax
	movl	%eax, %r8d
	vpextrw	$7, %xmm0, %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$9, %dx
	addl	%edx, %eax
	andl	$127, %eax
	subl	%edx, %eax
	movl	$0, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %edi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r10d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r9d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%r8d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
uq33333333:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vpextrw	$0, %xmm0, %eax
	movzwl	%ax, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %r10d
	shrw	%r10w
	vpextrw	$1, %xmm0, %eax
	movzwl	%ax, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %esi
	shrw	%si
	vpextrw	$2, %xmm0, %eax
	movzwl	%ax, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %r9d
	shrw	%r9w
	vpextrw	$3, %xmm0, %eax
	movzwl	%ax, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	shrw	%cx
	vpextrw	$4, %xmm0, %eax
	movzwl	%ax, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %r8d
	shrw	%r8w
	vpextrw	$5, %xmm0, %eax
	movzwl	%ax, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	%dx
	vpextrw	$6, %xmm0, %eax
	movzwl	%ax, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edi
	shrw	%di
	vpextrw	$7, %xmm0, %eax
	movzwl	%ax, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	shrw	%ax
	vmovd	%r10d, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r9d, %esi
	vmovd	%esi, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r8d, %ecx
	vmovd	%ecx, %xmm0
	vpinsrw	$1, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%edi, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
ur33333333:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vpextrw	$0, %xmm0, %edx
	movzwl	%dx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %r11d
	shrw	%r11w
	movl	%r11d, %eax
	addl	%eax, %eax
	addl	%r11d, %eax
	subl	%eax, %edx
	movl	%edx, %r11d
	vpextrw	$1, %xmm0, %edx
	movzwl	%dx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edi
	shrw	%di
	movl	%edi, %eax
	addl	%eax, %eax
	addl	%edi, %eax
	movl	%edx, %edi
	subl	%eax, %edi
	vpextrw	$2, %xmm0, %edx
	movzwl	%dx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %r10d
	shrw	%r10w
	movl	%r10d, %eax
	addl	%eax, %eax
	addl	%r10d, %eax
	subl	%eax, %edx
	movl	%edx, %r10d
	vpextrw	$3, %xmm0, %edx
	movzwl	%dx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %esi
	shrw	%si
	movl	%esi, %eax
	addl	%eax, %eax
	addl	%esi, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	vpextrw	$4, %xmm0, %edx
	movzwl	%dx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %r9d
	shrw	%r9w
	movl	%r9d, %eax
	addl	%eax, %eax
	addl	%r9d, %eax
	subl	%eax, %edx
	movl	%edx, %r9d
	vpextrw	$5, %xmm0, %edx
	movzwl	%dx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	shrw	%cx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	vpextrw	$6, %xmm0, %edx
	movzwl	%dx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %r8d
	shrw	%r8w
	movl	%r8d, %eax
	addl	%eax, %eax
	addl	%r8d, %eax
	subl	%eax, %edx
	movl	%edx, %r8d
	vpextrw	$7, %xmm0, %ebx
	movzwl	%bx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	%dx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ebx
	movl	%ebx, %edx
	movl	%r11d, %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, %edi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r10d, %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r9d, %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%r8d, %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movq	-24(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbx
	popq	%rbp
	ret
sq33333333:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vpextrw	$0, %xmm0, %eax
	movswl	%ax, %edx
	imull	$21846, %edx, %edx
	shrl	$16, %edx
	sarw	$15, %ax
	movl	%edx, %r11d
	subl	%eax, %r11d
	vpextrw	$1, %xmm0, %eax
	movswl	%ax, %edx
	imull	$21846, %edx, %edx
	shrl	$16, %edx
	sarw	$15, %ax
	movl	%edx, %esi
	subl	%eax, %esi
	vpextrw	$2, %xmm0, %eax
	movswl	%ax, %edx
	imull	$21846, %edx, %edx
	shrl	$16, %edx
	sarw	$15, %ax
	movl	%edx, %r10d
	subl	%eax, %r10d
	vpextrw	$3, %xmm0, %eax
	movswl	%ax, %edx
	imull	$21846, %edx, %edx
	shrl	$16, %edx
	sarw	$15, %ax
	movl	%edx, %ecx
	subl	%eax, %ecx
	vpextrw	$4, %xmm0, %eax
	movswl	%ax, %edx
	imull	$21846, %edx, %edx
	shrl	$16, %edx
	sarw	$15, %ax
	movl	%edx, %r9d
	subl	%eax, %r9d
	vpextrw	$5, %xmm0, %eax
	movswl	%ax, %edx
	imull	$21846, %edx, %edx
	shrl	$16, %edx
	sarw	$15, %ax
	subl	%eax, %edx
	vpextrw	$6, %xmm0, %eax
	movswl	%ax, %edi
	imull	$21846, %edi, %edi
	shrl	$16, %edi
	sarw	$15, %ax
	movl	%edi, %r8d
	subl	%eax, %r8d
	vpextrw	$7, %xmm0, %eax
	movswl	%ax, %edi
	imull	$21846, %edi, %edi
	shrl	$16, %edi
	sarw	$15, %ax
	subl	%eax, %edi
	movl	%edi, %eax
	movl	%r11d, %edi
	vmovd	%edi, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r10d, %esi
	vmovd	%esi, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r9d, %ecx
	vmovd	%ecx, %xmm0
	vpinsrw	$1, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%r8d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
sr33333333:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vpextrw	$0, %xmm0, %edx
	movswl	%dx, %eax
	imull	$21846, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	sarw	$15, %ax
	movl	%ecx, %r11d
	subl	%eax, %r11d
	movl	%r11d, %eax
	addl	%eax, %eax
	addl	%r11d, %eax
	subl	%eax, %edx
	movl	%edx, %r11d
	vpextrw	$1, %xmm0, %edx
	movswl	%dx, %eax
	imull	$21846, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	sarw	$15, %ax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	addl	%eax, %eax
	addl	%edi, %eax
	movl	%edx, %edi
	subl	%eax, %edi
	vpextrw	$2, %xmm0, %edx
	movswl	%dx, %eax
	imull	$21846, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	sarw	$15, %ax
	movl	%ecx, %r10d
	subl	%eax, %r10d
	movl	%r10d, %eax
	addl	%eax, %eax
	addl	%r10d, %eax
	subl	%eax, %edx
	movl	%edx, %r10d
	vpextrw	$3, %xmm0, %edx
	movswl	%dx, %eax
	imull	$21846, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	sarw	$15, %ax
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	addl	%eax, %eax
	addl	%esi, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	vpextrw	$4, %xmm0, %edx
	movswl	%dx, %eax
	imull	$21846, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	sarw	$15, %ax
	movl	%ecx, %r9d
	subl	%eax, %r9d
	movl	%r9d, %eax
	addl	%eax, %eax
	addl	%r9d, %eax
	subl	%eax, %edx
	movl	%edx, %r9d
	vpextrw	$5, %xmm0, %edx
	movswl	%dx, %eax
	imull	$21846, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	sarw	$15, %ax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	vpextrw	$6, %xmm0, %edx
	movswl	%dx, %eax
	imull	$21846, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %r8d
	movl	%edx, %eax
	sarw	$15, %ax
	subl	%eax, %r8d
	movl	%r8d, %eax
	addl	%eax, %eax
	addl	%r8d, %eax
	subl	%eax, %edx
	movl	%edx, %r8d
	vpextrw	$7, %xmm0, %ebx
	movswl	%bx, %eax
	imull	$21846, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	movl	%ebx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ebx
	movl	%ebx, %edx
	movl	%r11d, %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, %edi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r10d, %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r9d, %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%r8d, %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movq	-24(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbx
	popq	%rbp
	ret
uq65656565:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vpextrw	$0, %xmm0, %eax
	movzwl	%ax, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %r10d
	shrw	$2, %r10w
	vpextrw	$1, %xmm0, %eax
	movzwl	%ax, %eax
	imull	$52429, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %esi
	shrw	$2, %si
	vpextrw	$2, %xmm0, %eax
	movzwl	%ax, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %r9d
	shrw	$2, %r9w
	vpextrw	$3, %xmm0, %eax
	movzwl	%ax, %eax
	imull	$52429, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	shrw	$2, %cx
	vpextrw	$4, %xmm0, %eax
	movzwl	%ax, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %r8d
	shrw	$2, %r8w
	vpextrw	$5, %xmm0, %eax
	movzwl	%ax, %eax
	imull	$52429, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	$2, %dx
	vpextrw	$6, %xmm0, %eax
	movzwl	%ax, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edi
	shrw	$2, %di
	vpextrw	$7, %xmm0, %eax
	movzwl	%ax, %eax
	imull	$52429, %eax, %eax
	shrl	$16, %eax
	shrw	$2, %ax
	vmovd	%r10d, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r9d, %esi
	vmovd	%esi, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r8d, %ecx
	vmovd	%ecx, %xmm0
	vpinsrw	$1, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%edi, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
ur65656565:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vpextrw	$0, %xmm0, %edx
	movzwl	%dx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %r11d
	shrw	$2, %r11w
	movl	%r11d, %eax
	addl	%eax, %eax
	addl	%r11d, %eax
	addl	%eax, %eax
	subl	%eax, %edx
	movl	%edx, %r11d
	vpextrw	$1, %xmm0, %edx
	movzwl	%dx, %eax
	imull	$52429, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edi
	shrw	$2, %di
	movl	%edi, %eax
	sall	$2, %eax
	addl	%edi, %eax
	movl	%edx, %edi
	subl	%eax, %edi
	vpextrw	$2, %xmm0, %edx
	movzwl	%dx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %r10d
	shrw	$2, %r10w
	movl	%r10d, %eax
	addl	%eax, %eax
	addl	%r10d, %eax
	addl	%eax, %eax
	subl	%eax, %edx
	movl	%edx, %r10d
	vpextrw	$3, %xmm0, %edx
	movzwl	%dx, %eax
	imull	$52429, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %esi
	shrw	$2, %si
	movl	%esi, %eax
	sall	$2, %eax
	addl	%esi, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	vpextrw	$4, %xmm0, %edx
	movzwl	%dx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %r9d
	shrw	$2, %r9w
	movl	%r9d, %eax
	addl	%eax, %eax
	addl	%r9d, %eax
	addl	%eax, %eax
	subl	%eax, %edx
	movl	%edx, %r9d
	vpextrw	$5, %xmm0, %edx
	movzwl	%dx, %eax
	imull	$52429, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	shrw	$2, %cx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	vpextrw	$6, %xmm0, %edx
	movzwl	%dx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %r8d
	shrw	$2, %r8w
	movl	%r8d, %eax
	addl	%eax, %eax
	addl	%r8d, %eax
	addl	%eax, %eax
	subl	%eax, %edx
	movl	%edx, %r8d
	vpextrw	$7, %xmm0, %ebx
	movzwl	%bx, %eax
	imull	$52429, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	$2, %dx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ebx
	movl	%ebx, %edx
	movl	%r11d, %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, %edi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r10d, %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r9d, %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%r8d, %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movq	-24(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbx
	popq	%rbp
	ret
sq65656565:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vpextrw	$0, %xmm0, %eax
	movswl	%ax, %edx
	imull	$10923, %edx, %edx
	shrl	$16, %edx
	sarw	$15, %ax
	movl	%edx, %r11d
	subl	%eax, %r11d
	vpextrw	$1, %xmm0, %eax
	movswl	%ax, %edx
	imull	$26215, %edx, %edx
	shrl	$16, %edx
	sarw	%dx
	sarw	$15, %ax
	movl	%edx, %esi
	subl	%eax, %esi
	vpextrw	$2, %xmm0, %eax
	movswl	%ax, %edx
	imull	$10923, %edx, %edx
	shrl	$16, %edx
	sarw	$15, %ax
	movl	%edx, %r10d
	subl	%eax, %r10d
	vpextrw	$3, %xmm0, %eax
	movswl	%ax, %edx
	imull	$26215, %edx, %edx
	shrl	$16, %edx
	sarw	%dx
	sarw	$15, %ax
	movl	%edx, %ecx
	subl	%eax, %ecx
	vpextrw	$4, %xmm0, %eax
	movswl	%ax, %edx
	imull	$10923, %edx, %edx
	shrl	$16, %edx
	sarw	$15, %ax
	movl	%edx, %r9d
	subl	%eax, %r9d
	vpextrw	$5, %xmm0, %eax
	movswl	%ax, %edx
	imull	$26215, %edx, %edx
	shrl	$16, %edx
	sarw	%dx
	sarw	$15, %ax
	subl	%eax, %edx
	vpextrw	$6, %xmm0, %eax
	movswl	%ax, %edi
	imull	$10923, %edi, %edi
	shrl	$16, %edi
	sarw	$15, %ax
	movl	%edi, %r8d
	subl	%eax, %r8d
	vpextrw	$7, %xmm0, %eax
	movswl	%ax, %edi
	imull	$26215, %edi, %edi
	shrl	$16, %edi
	sarw	%di
	sarw	$15, %ax
	subl	%eax, %edi
	movl	%edi, %eax
	movl	%r11d, %edi
	vmovd	%edi, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r10d, %esi
	vmovd	%esi, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r9d, %ecx
	vmovd	%ecx, %xmm0
	vpinsrw	$1, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%r8d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
sr65656565:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vpextrw	$0, %xmm0, %edx
	movswl	%dx, %eax
	imull	$10923, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	sarw	$15, %ax
	movl	%ecx, %r11d
	subl	%eax, %r11d
	movl	%r11d, %eax
	addl	%eax, %eax
	addl	%r11d, %eax
	addl	%eax, %eax
	subl	%eax, %edx
	movl	%edx, %r11d
	vpextrw	$1, %xmm0, %edx
	movswl	%dx, %eax
	imull	$26215, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	sarw	%cx
	movl	%edx, %eax
	sarw	$15, %ax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	sall	$2, %eax
	addl	%edi, %eax
	movl	%edx, %edi
	subl	%eax, %edi
	vpextrw	$2, %xmm0, %edx
	movswl	%dx, %eax
	imull	$10923, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	sarw	$15, %ax
	movl	%ecx, %r10d
	subl	%eax, %r10d
	movl	%r10d, %eax
	addl	%eax, %eax
	addl	%r10d, %eax
	addl	%eax, %eax
	subl	%eax, %edx
	movl	%edx, %r10d
	vpextrw	$3, %xmm0, %edx
	movswl	%dx, %eax
	imull	$26215, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	sarw	%cx
	movl	%edx, %eax
	sarw	$15, %ax
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	sall	$2, %eax
	addl	%esi, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	vpextrw	$4, %xmm0, %edx
	movswl	%dx, %eax
	imull	$10923, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	sarw	$15, %ax
	movl	%ecx, %r9d
	subl	%eax, %r9d
	movl	%r9d, %eax
	addl	%eax, %eax
	addl	%r9d, %eax
	addl	%eax, %eax
	subl	%eax, %edx
	movl	%edx, %r9d
	vpextrw	$5, %xmm0, %edx
	movswl	%dx, %eax
	imull	$26215, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	sarw	%cx
	movl	%edx, %eax
	sarw	$15, %ax
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	vpextrw	$6, %xmm0, %edx
	movswl	%dx, %eax
	imull	$10923, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %r8d
	movl	%edx, %eax
	sarw	$15, %ax
	subl	%eax, %r8d
	movl	%r8d, %eax
	addl	%eax, %eax
	addl	%r8d, %eax
	addl	%eax, %eax
	subl	%eax, %edx
	movl	%edx, %r8d
	vpextrw	$7, %xmm0, %ebx
	movswl	%bx, %eax
	imull	$26215, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	sarw	%dx
	movl	%ebx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ebx
	movl	%ebx, %edx
	movl	%r11d, %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, %edi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r10d, %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r9d, %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%r8d, %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movq	-24(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbx
	popq	%rbp
	ret
uq14141461461414:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vpextrw	$0, %xmm0, %eax
	shrw	%ax
	movzwl	%ax, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %r10d
	shrw	%r10w
	vpextrw	$1, %xmm0, %eax
	shrw	%ax
	movzwl	%ax, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %esi
	shrw	%si
	vpextrw	$2, %xmm0, %eax
	shrw	%ax
	movzwl	%ax, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %r9d
	shrw	%r9w
	vpextrw	$3, %xmm0, %eax
	movzwl	%ax, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	shrw	$2, %cx
	vpextrw	$4, %xmm0, %eax
	shrw	%ax
	movzwl	%ax, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %r8d
	shrw	%r8w
	vpextrw	$5, %xmm0, %eax
	movzwl	%ax, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	$2, %dx
	vpextrw	$6, %xmm0, %eax
	shrw	%ax
	movzwl	%ax, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edi
	shrw	%di
	vpextrw	$7, %xmm0, %eax
	shrw	%ax
	movzwl	%ax, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	shrw	%ax
	vmovd	%r10d, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r9d, %esi
	vmovd	%esi, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r8d, %ecx
	vmovd	%ecx, %xmm0
	vpinsrw	$1, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%edi, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
ur14141461461414:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vpextrw	$0, %xmm0, %ecx
	movl	%ecx, %eax
	shrw	%ax
	movzwl	%ax, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %r11d
	shrw	%r11w
	movl	%r11d, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	subl	%edx, %ecx
	movl	%ecx, %r11d
	vpextrw	$1, %xmm0, %ecx
	movl	%ecx, %eax
	shrw	%ax
	movzwl	%ax, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %esi
	shrw	%si
	movl	%esi, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	movl	%ecx, %esi
	subl	%edx, %esi
	vpextrw	$2, %xmm0, %ecx
	movl	%ecx, %eax
	shrw	%ax
	movzwl	%ax, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %r10d
	shrw	%r10w
	movl	%r10d, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	subl	%edx, %ecx
	movl	%ecx, %r10d
	vpextrw	$3, %xmm0, %edx
	movzwl	%dx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	shrw	$2, %cx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	addl	%eax, %eax
	subl	%eax, %edx
	movl	%edx, %ecx
	vpextrw	$4, %xmm0, %edi
	movl	%edi, %eax
	shrw	%ax
	movzwl	%ax, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %r9d
	shrw	%r9w
	movl	%r9d, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	subl	%edx, %edi
	movl	%edi, %r9d
	vpextrw	$5, %xmm0, %edi
	movzwl	%di, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	$2, %dx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %edi
	movl	%edi, %edx
	vpextrw	$6, %xmm0, %ebx
	movl	%ebx, %eax
	shrw	%ax
	movzwl	%ax, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %r8d
	shrw	%r8w
	movl	%r8d, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edi
	subl	%eax, %edi
	subl	%edi, %ebx
	movl	%ebx, %r8d
	vpextrw	$7, %xmm0, %ebx
	movl	%ebx, %eax
	shrw	%ax
	movzwl	%ax, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	shrw	%ax
	addl	%eax, %eax
	leal	0(,%rax,8), %edi
	subl	%eax, %edi
	movl	%ebx, %eax
	subl	%edi, %eax
	movl	%r11d, %edi
	vmovd	%edi, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r10d, %esi
	vmovd	%esi, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r9d, %ecx
	vmovd	%ecx, %xmm0
	vpinsrw	$1, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%r8d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movq	-24(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbx
	popq	%rbp
	ret
sq14141461461414:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vpextrw	$0, %xmm0, %eax
	movswl	%ax, %edx
	imull	$18725, %edx, %edx
	shrl	$16, %edx
	sarw	$2, %dx
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %r11d
	vpextrw	$1, %xmm0, %eax
	movswl	%ax, %edx
	imull	$18725, %edx, %edx
	shrl	$16, %edx
	sarw	$2, %dx
	sarw	$15, %ax
	movl	%edx, %esi
	subl	%eax, %esi
	vpextrw	$2, %xmm0, %eax
	movswl	%ax, %edx
	imull	$18725, %edx, %edx
	shrl	$16, %edx
	sarw	$2, %dx
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %r10d
	vpextrw	$3, %xmm0, %eax
	movswl	%ax, %edx
	imull	$10923, %edx, %edx
	shrl	$16, %edx
	sarw	$15, %ax
	movl	%edx, %ecx
	subl	%eax, %ecx
	vpextrw	$4, %xmm0, %eax
	movswl	%ax, %edx
	imull	$18725, %edx, %edx
	shrl	$16, %edx
	sarw	$2, %dx
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %r9d
	vpextrw	$5, %xmm0, %eax
	movswl	%ax, %edx
	imull	$10923, %edx, %edx
	shrl	$16, %edx
	sarw	$15, %ax
	subl	%eax, %edx
	vpextrw	$6, %xmm0, %eax
	movswl	%ax, %edi
	imull	$18725, %edi, %edi
	shrl	$16, %edi
	sarw	$2, %di
	sarw	$15, %ax
	subl	%eax, %edi
	movl	%edi, %r8d
	vpextrw	$7, %xmm0, %eax
	movswl	%ax, %edi
	imull	$18725, %edi, %edi
	shrl	$16, %edi
	sarw	$2, %di
	sarw	$15, %ax
	subl	%eax, %edi
	movl	%edi, %eax
	movl	%r11d, %edi
	vmovd	%edi, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r10d, %esi
	vmovd	%esi, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r9d, %ecx
	vmovd	%ecx, %xmm0
	vpinsrw	$1, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%r8d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
sr14141461461414:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vpextrw	$0, %xmm0, %ecx
	movswl	%cx, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	sarw	$2, %dx
	movl	%ecx, %eax
	sarw	$15, %ax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	movl	%ecx, %ebx
	subl	%edx, %ebx
	vpextrw	$1, %xmm0, %ecx
	movswl	%cx, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	sarw	$2, %dx
	movl	%ecx, %eax
	sarw	$15, %ax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	movl	%ecx, %esi
	subl	%edx, %esi
	vpextrw	$2, %xmm0, %ecx
	movswl	%cx, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	sarw	$2, %dx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %r11d
	movl	%r11d, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	subl	%edx, %ecx
	movl	%ecx, %r11d
	vpextrw	$3, %xmm0, %edx
	movswl	%dx, %eax
	imull	$10923, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movl	%edx, %eax
	sarw	$15, %ax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	addl	%eax, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	vpextrw	$4, %xmm0, %edi
	movswl	%di, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	sarw	$2, %dx
	movl	%edi, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %r10d
	movl	%r10d, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	subl	%edx, %edi
	movl	%edi, %r10d
	vpextrw	$5, %xmm0, %edi
	movswl	%di, %eax
	imull	$10923, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	movl	%edi, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %edi
	movl	%edi, %edx
	vpextrw	$6, %xmm0, %r8d
	movswl	%r8w, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edi
	sarw	$2, %di
	movl	%r8d, %eax
	sarw	$15, %ax
	subl	%eax, %edi
	movl	%edi, %r9d
	movl	%r9d, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edi
	subl	%eax, %edi
	movl	%r8d, %r9d
	subl	%edi, %r9d
	vpextrw	$7, %xmm0, %r8d
	movswl	%r8w, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edi
	sarw	$2, %di
	movl	%r8d, %eax
	sarw	$15, %ax
	subl	%eax, %edi
	movl	%edi, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edi
	subl	%eax, %edi
	movl	%r8d, %eax
	subl	%edi, %eax
	movl	%ebx, %edi
	vmovd	%edi, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r11d, %esi
	vmovd	%esi, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r10d, %ecx
	vmovd	%ecx, %xmm0
	vpinsrw	$1, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%r9d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movq	-24(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbx
	popq	%rbp
	ret
uq77777777:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vpextrw	$0, %xmm0, %eax
	movzwl	%ax, %edx
	imull	$9363, %edx, %edx
	shrl	$16, %edx
	subl	%edx, %eax
	shrw	%ax
	addl	%edx, %eax
	shrw	$2, %ax
	movl	%eax, %r11d
	vpextrw	$1, %xmm0, %eax
	movzwl	%ax, %edx
	imull	$9363, %edx, %edx
	shrl	$16, %edx
	subl	%edx, %eax
	shrw	%ax
	addl	%edx, %eax
	shrw	$2, %ax
	movl	%eax, %edi
	vpextrw	$2, %xmm0, %eax
	movzwl	%ax, %edx
	imull	$9363, %edx, %edx
	shrl	$16, %edx
	subl	%edx, %eax
	shrw	%ax
	addl	%edx, %eax
	shrw	$2, %ax
	movl	%eax, %r10d
	vpextrw	$3, %xmm0, %eax
	movzwl	%ax, %edx
	imull	$9363, %edx, %edx
	shrl	$16, %edx
	subl	%edx, %eax
	shrw	%ax
	addl	%edx, %eax
	shrw	$2, %ax
	movl	%eax, %esi
	vpextrw	$4, %xmm0, %eax
	movzwl	%ax, %edx
	imull	$9363, %edx, %edx
	shrl	$16, %edx
	subl	%edx, %eax
	shrw	%ax
	addl	%edx, %eax
	shrw	$2, %ax
	movl	%eax, %r9d
	vpextrw	$5, %xmm0, %eax
	movzwl	%ax, %edx
	imull	$9363, %edx, %edx
	shrl	$16, %edx
	subl	%edx, %eax
	shrw	%ax
	addl	%edx, %eax
	shrw	$2, %ax
	movl	%eax, %ecx
	vpextrw	$6, %xmm0, %eax
	movzwl	%ax, %edx
	imull	$9363, %edx, %edx
	shrl	$16, %edx
	subl	%edx, %eax
	shrw	%ax
	addl	%edx, %eax
	shrw	$2, %ax
	movl	%eax, %r8d
	vpextrw	$7, %xmm0, %eax
	movzwl	%ax, %edx
	imull	$9363, %edx, %edx
	shrl	$16, %edx
	subl	%edx, %eax
	shrw	%ax
	addl	%edx, %eax
	shrw	$2, %ax
	movl	%r11d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %edi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r10d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r9d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%r8d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
ur77777777:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vpextrw	$0, %xmm0, %edx
	movzwl	%dx, %eax
	imull	$9363, %eax, %eax
	shrl	$16, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	shrw	%cx
	addl	%ecx, %eax
	shrw	$2, %ax
	movl	%eax, %r11d
	movl	%r11d, %eax
	sall	$3, %eax
	subl	%r11d, %eax
	subl	%eax, %edx
	movl	%edx, %r11d
	vpextrw	$1, %xmm0, %edx
	movzwl	%dx, %eax
	imull	$9363, %eax, %eax
	shrl	$16, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	shrw	%cx
	addl	%ecx, %eax
	shrw	$2, %ax
	movl	%eax, %edi
	movl	%edi, %eax
	sall	$3, %eax
	subl	%edi, %eax
	movl	%edx, %edi
	subl	%eax, %edi
	vpextrw	$2, %xmm0, %edx
	movzwl	%dx, %eax
	imull	$9363, %eax, %eax
	shrl	$16, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	shrw	%cx
	addl	%ecx, %eax
	shrw	$2, %ax
	movl	%eax, %r10d
	movl	%r10d, %eax
	sall	$3, %eax
	subl	%r10d, %eax
	subl	%eax, %edx
	movl	%edx, %r10d
	vpextrw	$3, %xmm0, %edx
	movzwl	%dx, %eax
	imull	$9363, %eax, %eax
	shrl	$16, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	shrw	%cx
	addl	%ecx, %eax
	shrw	$2, %ax
	movl	%eax, %esi
	movl	%esi, %eax
	sall	$3, %eax
	subl	%esi, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	vpextrw	$4, %xmm0, %edx
	movzwl	%dx, %eax
	imull	$9363, %eax, %eax
	shrl	$16, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	shrw	%cx
	addl	%ecx, %eax
	shrw	$2, %ax
	movl	%eax, %r9d
	movl	%r9d, %eax
	sall	$3, %eax
	subl	%r9d, %eax
	subl	%eax, %edx
	movl	%edx, %r9d
	vpextrw	$5, %xmm0, %edx
	movzwl	%dx, %eax
	imull	$9363, %eax, %eax
	shrl	$16, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	shrw	%cx
	addl	%ecx, %eax
	shrw	$2, %ax
	movl	%eax, %ecx
	movl	%ecx, %eax
	sall	$3, %eax
	subl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, %ecx
	vpextrw	$6, %xmm0, %edx
	movzwl	%dx, %eax
	imull	$9363, %eax, %eax
	shrl	$16, %eax
	movl	%edx, %r8d
	subl	%eax, %r8d
	shrw	%r8w
	addl	%r8d, %eax
	shrw	$2, %ax
	movl	%eax, %r8d
	movl	%r8d, %eax
	sall	$3, %eax
	subl	%r8d, %eax
	subl	%eax, %edx
	movl	%edx, %r8d
	vpextrw	$7, %xmm0, %ebx
	movzwl	%bx, %eax
	imull	$9363, %eax, %eax
	shrl	$16, %eax
	movl	%ebx, %edx
	subl	%eax, %edx
	shrw	%dx
	addl	%edx, %eax
	shrw	$2, %ax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ebx
	movl	%ebx, %edx
	movl	%r11d, %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, %edi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r10d, %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r9d, %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%r8d, %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movq	-24(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbx
	popq	%rbp
	ret
sq77777777:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vpextrw	$0, %xmm0, %eax
	movswl	%ax, %edx
	imull	$18725, %edx, %edx
	shrl	$16, %edx
	sarw	%dx
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %r11d
	vpextrw	$1, %xmm0, %eax
	movswl	%ax, %edx
	imull	$18725, %edx, %edx
	shrl	$16, %edx
	sarw	%dx
	sarw	$15, %ax
	movl	%edx, %esi
	subl	%eax, %esi
	vpextrw	$2, %xmm0, %eax
	movswl	%ax, %edx
	imull	$18725, %edx, %edx
	shrl	$16, %edx
	sarw	%dx
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %r10d
	vpextrw	$3, %xmm0, %eax
	movswl	%ax, %edx
	imull	$18725, %edx, %edx
	shrl	$16, %edx
	sarw	%dx
	sarw	$15, %ax
	movl	%edx, %ecx
	subl	%eax, %ecx
	vpextrw	$4, %xmm0, %eax
	movswl	%ax, %edx
	imull	$18725, %edx, %edx
	shrl	$16, %edx
	sarw	%dx
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %r9d
	vpextrw	$5, %xmm0, %eax
	movswl	%ax, %edx
	imull	$18725, %edx, %edx
	shrl	$16, %edx
	sarw	%dx
	sarw	$15, %ax
	subl	%eax, %edx
	vpextrw	$6, %xmm0, %eax
	movswl	%ax, %edi
	imull	$18725, %edi, %edi
	shrl	$16, %edi
	sarw	%di
	sarw	$15, %ax
	subl	%eax, %edi
	movl	%edi, %r8d
	vpextrw	$7, %xmm0, %eax
	movswl	%ax, %edi
	imull	$18725, %edi, %edi
	shrl	$16, %edi
	sarw	%di
	sarw	$15, %ax
	subl	%eax, %edi
	movl	%edi, %eax
	movl	%r11d, %edi
	vmovd	%edi, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r10d, %esi
	vmovd	%esi, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r9d, %ecx
	vmovd	%ecx, %xmm0
	vpinsrw	$1, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%r8d, %edx
	vmovd	%edx, %xmm0
	vpinsrw	$1, %eax, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movq	-8(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbp
	ret
sr77777777:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	vmovdqa	(%rax), %xmm0
	vpextrw	$0, %xmm0, %edx
	movswl	%dx, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	sarw	%cx
	movl	%edx, %eax
	sarw	$15, %ax
	subl	%eax, %ecx
	movl	%ecx, %r11d
	movl	%r11d, %eax
	sall	$3, %eax
	subl	%r11d, %eax
	subl	%eax, %edx
	movl	%edx, %r11d
	vpextrw	$1, %xmm0, %edx
	movswl	%dx, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	sarw	%cx
	movl	%edx, %eax
	sarw	$15, %ax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	sall	$3, %eax
	subl	%edi, %eax
	movl	%edx, %edi
	subl	%eax, %edi
	vpextrw	$2, %xmm0, %edx
	movswl	%dx, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	sarw	%cx
	movl	%edx, %eax
	sarw	$15, %ax
	subl	%eax, %ecx
	movl	%ecx, %r10d
	movl	%r10d, %eax
	sall	$3, %eax
	subl	%r10d, %eax
	subl	%eax, %edx
	movl	%edx, %r10d
	vpextrw	$3, %xmm0, %edx
	movswl	%dx, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	sarw	%cx
	movl	%edx, %eax
	sarw	$15, %ax
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	sall	$3, %eax
	subl	%esi, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	vpextrw	$4, %xmm0, %edx
	movswl	%dx, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	sarw	%cx
	movl	%edx, %eax
	sarw	$15, %ax
	subl	%eax, %ecx
	movl	%ecx, %r9d
	movl	%r9d, %eax
	sall	$3, %eax
	subl	%r9d, %eax
	subl	%eax, %edx
	movl	%edx, %r9d
	vpextrw	$5, %xmm0, %edx
	movswl	%dx, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	sarw	%cx
	movl	%edx, %eax
	sarw	$15, %ax
	subl	%eax, %ecx
	movl	%ecx, %eax
	sall	$3, %eax
	subl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, %ecx
	vpextrw	$6, %xmm0, %edx
	movswl	%dx, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %r8d
	sarw	%r8w
	movl	%edx, %eax
	sarw	$15, %ax
	subl	%eax, %r8d
	movl	%r8d, %eax
	sall	$3, %eax
	subl	%r8d, %eax
	subl	%eax, %edx
	movl	%edx, %r8d
	vpextrw	$7, %xmm0, %ebx
	movswl	%bx, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	sarw	%dx
	movl	%ebx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ebx
	movl	%ebx, %edx
	movl	%r11d, %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, %edi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm2
	movl	%r10d, %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, %esi, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm4
	movl	%r9d, %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, %ecx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm1
	movl	%r8d, %eax
	vmovd	%eax, %xmm0
	vpinsrw	$1, %edx, %xmm0, %xmm0
	vmovdqa	%xmm0, %xmm3
	vpunpckldq	%xmm4, %xmm2, %xmm0
	vpunpckldq	%xmm3, %xmm1, %xmm1
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movq	-24(%rbp), %rax
	vmovaps	%xmm0, (%rax)
	popq	%rbx
	popq	%rbp
	ret
u:
	.value	73
	.value	-5
	.value	0
	.value	174
	.value	921
	.value	-1
	.value	17
	.value	178
	.value	1
	.value	8173
	.value	-1
	.value	-64
	.value	12
	.value	29612
	.value	128
	.value	8912
s:
	.value	73
	.value	-9123
	.value	32761
	.value	8191
	.value	16371
	.value	1201
	.value	12701
	.value	9999
	.value	9903
	.value	-1
	.value	-7323
	.value	0
	.value	-7
	.value	-323
	.value	9124
	.value	-9199
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	jmp	L34
L131:
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	u(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uq44444444
	movzwl	-32(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	(%rdx), %edx
	shrw	$2, %dx
	cmpw	%dx, %ax
	jne	L35
	movzwl	-26(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	6(%rdx), %edx
	shrw	$2, %dx
	cmpw	%dx, %ax
	je	L36
L35:
	call	abort
L36:
	leaq	-32(%rbp), %rax
	movzwl	-28(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	4(%rdx), %edx
	shrw	$2, %dx
	cmpw	%dx, %ax
	jne	L37
	movzwl	-30(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	2(%rdx), %edx
	shrw	$2, %dx
	cmpw	%dx, %ax
	je	L38
L37:
	call	abort
L38:
	leaq	-32(%rbp), %rax
	movzwl	-24(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	8(%rdx), %edx
	shrw	$2, %dx
	cmpw	%dx, %ax
	jne	L39
	movzwl	-18(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	14(%rdx), %edx
	shrw	$2, %dx
	cmpw	%dx, %ax
	je	L40
L39:
	call	abort
L40:
	leaq	-32(%rbp), %rax
	movzwl	-20(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	12(%rdx), %edx
	shrw	$2, %dx
	cmpw	%dx, %ax
	jne	L41
	movzwl	-22(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	10(%rdx), %edx
	shrw	$2, %dx
	cmpw	%dx, %ax
	je	L42
L41:
	call	abort
L42:
	leaq	-32(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	u(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ur44444444
	movzwl	-32(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	(%rdx), %edx
	andl	$3, %edx
	cmpw	%dx, %ax
	jne	L43
	movzwl	-26(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	6(%rdx), %edx
	andl	$3, %edx
	cmpw	%dx, %ax
	je	L44
L43:
	call	abort
L44:
	leaq	-32(%rbp), %rax
	movzwl	-28(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	4(%rdx), %edx
	andl	$3, %edx
	cmpw	%dx, %ax
	jne	L45
	movzwl	-30(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	2(%rdx), %edx
	andl	$3, %edx
	cmpw	%dx, %ax
	je	L46
L45:
	call	abort
L46:
	leaq	-32(%rbp), %rax
	movzwl	-24(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	8(%rdx), %edx
	andl	$3, %edx
	cmpw	%dx, %ax
	jne	L47
	movzwl	-18(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	14(%rdx), %edx
	andl	$3, %edx
	cmpw	%dx, %ax
	je	L48
L47:
	call	abort
L48:
	leaq	-32(%rbp), %rax
	movzwl	-20(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	12(%rdx), %edx
	andl	$3, %edx
	cmpw	%dx, %ax
	jne	L49
	movzwl	-22(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	10(%rdx), %edx
	andl	$3, %edx
	cmpw	%dx, %ax
	je	L50
L49:
	call	abort
L50:
	leaq	-32(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	u(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uq1428166432128
	movzwl	-32(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	(%rax), %eax
	cmpw	%ax, %dx
	jne	L51
	movzwl	-26(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	6(%rdx), %edx
	shrw	$3, %dx
	cmpw	%dx, %ax
	je	L52
L51:
	call	abort
L52:
	leaq	-32(%rbp), %rax
	movzwl	-28(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	4(%rdx), %edx
	shrw	%dx
	cmpw	%dx, %ax
	jne	L53
	movzwl	-30(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	2(%rdx), %edx
	shrw	$2, %dx
	cmpw	%dx, %ax
	je	L54
L53:
	call	abort
L54:
	leaq	-32(%rbp), %rax
	movzwl	-24(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	8(%rdx), %edx
	shrw	$4, %dx
	cmpw	%dx, %ax
	jne	L55
	movzwl	-18(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	14(%rdx), %edx
	shrw	$7, %dx
	cmpw	%dx, %ax
	je	L56
L55:
	call	abort
L56:
	leaq	-32(%rbp), %rax
	movzwl	-20(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	12(%rdx), %edx
	shrw	$5, %dx
	cmpw	%dx, %ax
	jne	L57
	movzwl	-22(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	10(%rdx), %edx
	shrw	$6, %dx
	cmpw	%dx, %ax
	je	L58
L57:
	call	abort
L58:
	leaq	-32(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	u(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ur1428166432128
	movzwl	-32(%rbp), %eax
	testw	%ax, %ax
	jne	L59
	movzwl	-26(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	6(%rdx), %edx
	andl	$7, %edx
	cmpw	%dx, %ax
	je	L60
L59:
	call	abort
L60:
	leaq	-32(%rbp), %rax
	movzwl	-28(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	4(%rdx), %edx
	andl	$1, %edx
	cmpw	%dx, %ax
	jne	L61
	movzwl	-30(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	2(%rdx), %edx
	andl	$3, %edx
	cmpw	%dx, %ax
	je	L62
L61:
	call	abort
L62:
	leaq	-32(%rbp), %rax
	movzwl	-24(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	8(%rdx), %edx
	andl	$15, %edx
	cmpw	%dx, %ax
	jne	L63
	movzwl	-18(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	14(%rdx), %edx
	andl	$127, %edx
	cmpw	%dx, %ax
	je	L64
L63:
	call	abort
L64:
	leaq	-32(%rbp), %rax
	movzwl	-20(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	12(%rdx), %edx
	andl	$31, %edx
	cmpw	%dx, %ax
	jne	L65
	movzwl	-22(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	10(%rdx), %edx
	andl	$63, %edx
	cmpw	%dx, %ax
	je	L66
L65:
	call	abort
L66:
	leaq	-32(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	u(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uq33333333
	movzwl	-32(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	(%rdx), %edx
	movzwl	%dx, %edx
	imull	$43691, %edx, %edx
	shrl	$16, %edx
	shrw	%dx
	cmpw	%dx, %ax
	jne	L67
	movzwl	-26(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	6(%rdx), %edx
	movzwl	%dx, %edx
	imull	$43691, %edx, %edx
	shrl	$16, %edx
	shrw	%dx
	cmpw	%dx, %ax
	je	L68
L67:
	call	abort
L68:
	leaq	-32(%rbp), %rax
	movzwl	-28(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	4(%rdx), %edx
	movzwl	%dx, %edx
	imull	$43691, %edx, %edx
	shrl	$16, %edx
	shrw	%dx
	cmpw	%dx, %ax
	jne	L69
	movzwl	-30(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	2(%rdx), %edx
	movzwl	%dx, %edx
	imull	$43691, %edx, %edx
	shrl	$16, %edx
	shrw	%dx
	cmpw	%dx, %ax
	je	L70
L69:
	call	abort
L70:
	leaq	-32(%rbp), %rax
	movzwl	-24(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	8(%rdx), %edx
	movzwl	%dx, %edx
	imull	$43691, %edx, %edx
	shrl	$16, %edx
	shrw	%dx
	cmpw	%dx, %ax
	jne	L71
	movzwl	-18(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	14(%rdx), %edx
	movzwl	%dx, %edx
	imull	$43691, %edx, %edx
	shrl	$16, %edx
	shrw	%dx
	cmpw	%dx, %ax
	je	L72
L71:
	call	abort
L72:
	leaq	-32(%rbp), %rax
	movzwl	-20(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	12(%rdx), %edx
	movzwl	%dx, %edx
	imull	$43691, %edx, %edx
	shrl	$16, %edx
	shrw	%dx
	cmpw	%dx, %ax
	jne	L73
	movzwl	-22(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	10(%rdx), %edx
	movzwl	%dx, %edx
	imull	$43691, %edx, %edx
	shrl	$16, %edx
	shrw	%dx
	cmpw	%dx, %ax
	je	L74
L73:
	call	abort
L74:
	leaq	-32(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	u(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ur33333333
	movzwl	-32(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	(%rax), %ecx
	movzwl	%cx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	%dx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	jne	L75
	movzwl	-26(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	6(%rax), %ecx
	movzwl	%cx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	%dx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L76
L75:
	call	abort
L76:
	leaq	-32(%rbp), %rax
	movzwl	-28(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	4(%rax), %ecx
	movzwl	%cx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	%dx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	jne	L77
	movzwl	-30(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	2(%rax), %ecx
	movzwl	%cx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	%dx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L78
L77:
	call	abort
L78:
	leaq	-32(%rbp), %rax
	movzwl	-24(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	8(%rax), %ecx
	movzwl	%cx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	%dx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	jne	L79
	movzwl	-18(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	14(%rax), %ecx
	movzwl	%cx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	%dx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L80
L79:
	call	abort
L80:
	leaq	-32(%rbp), %rax
	movzwl	-20(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	12(%rax), %ecx
	movzwl	%cx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	%dx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	jne	L81
	movzwl	-22(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	10(%rax), %ecx
	movzwl	%cx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	%dx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L82
L81:
	call	abort
L82:
	leaq	-32(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	u(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uq65656565
	movzwl	-32(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	(%rdx), %edx
	movzwl	%dx, %edx
	imull	$43691, %edx, %edx
	shrl	$16, %edx
	shrw	$2, %dx
	cmpw	%dx, %ax
	jne	L83
	movzwl	-26(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	6(%rdx), %edx
	movzwl	%dx, %edx
	imull	$52429, %edx, %edx
	shrl	$16, %edx
	shrw	$2, %dx
	cmpw	%dx, %ax
	je	L84
L83:
	call	abort
L84:
	leaq	-32(%rbp), %rax
	movzwl	-28(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	4(%rdx), %edx
	movzwl	%dx, %edx
	imull	$43691, %edx, %edx
	shrl	$16, %edx
	shrw	$2, %dx
	cmpw	%dx, %ax
	jne	L85
	movzwl	-30(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	2(%rdx), %edx
	movzwl	%dx, %edx
	imull	$52429, %edx, %edx
	shrl	$16, %edx
	shrw	$2, %dx
	cmpw	%dx, %ax
	je	L86
L85:
	call	abort
L86:
	leaq	-32(%rbp), %rax
	movzwl	-24(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	8(%rdx), %edx
	movzwl	%dx, %edx
	imull	$43691, %edx, %edx
	shrl	$16, %edx
	shrw	$2, %dx
	cmpw	%dx, %ax
	jne	L87
	movzwl	-18(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	14(%rdx), %edx
	movzwl	%dx, %edx
	imull	$52429, %edx, %edx
	shrl	$16, %edx
	shrw	$2, %dx
	cmpw	%dx, %ax
	je	L88
L87:
	call	abort
L88:
	leaq	-32(%rbp), %rax
	movzwl	-20(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	12(%rdx), %edx
	movzwl	%dx, %edx
	imull	$43691, %edx, %edx
	shrl	$16, %edx
	shrw	$2, %dx
	cmpw	%dx, %ax
	jne	L89
	movzwl	-22(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	10(%rdx), %edx
	movzwl	%dx, %edx
	imull	$52429, %edx, %edx
	shrl	$16, %edx
	shrw	$2, %dx
	cmpw	%dx, %ax
	je	L90
L89:
	call	abort
L90:
	leaq	-32(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	u(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ur65656565
	movzwl	-32(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	(%rax), %ecx
	movzwl	%cx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	$2, %dx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	jne	L91
	movzwl	-26(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	6(%rax), %ecx
	movzwl	%cx, %eax
	imull	$52429, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	$2, %dx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L92
L91:
	call	abort
L92:
	leaq	-32(%rbp), %rax
	movzwl	-28(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	4(%rax), %ecx
	movzwl	%cx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	$2, %dx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	jne	L93
	movzwl	-30(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	2(%rax), %ecx
	movzwl	%cx, %eax
	imull	$52429, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	$2, %dx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L94
L93:
	call	abort
L94:
	leaq	-32(%rbp), %rax
	movzwl	-24(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	8(%rax), %ecx
	movzwl	%cx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	$2, %dx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	jne	L95
	movzwl	-18(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	14(%rax), %ecx
	movzwl	%cx, %eax
	imull	$52429, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	$2, %dx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L96
L95:
	call	abort
L96:
	leaq	-32(%rbp), %rax
	movzwl	-20(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	12(%rax), %ecx
	movzwl	%cx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	$2, %dx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	jne	L97
	movzwl	-22(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	10(%rax), %ecx
	movzwl	%cx, %eax
	imull	$52429, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	$2, %dx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L98
L97:
	call	abort
L98:
	leaq	-32(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	u(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uq14141461461414
	movzwl	-32(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	(%rdx), %edx
	shrw	%dx
	movzwl	%dx, %edx
	imull	$18725, %edx, %edx
	shrl	$16, %edx
	shrw	%dx
	cmpw	%dx, %ax
	jne	L99
	movzwl	-26(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	6(%rdx), %edx
	movzwl	%dx, %edx
	imull	$43691, %edx, %edx
	shrl	$16, %edx
	shrw	$2, %dx
	cmpw	%dx, %ax
	je	L100
L99:
	call	abort
L100:
	leaq	-32(%rbp), %rax
	movzwl	-28(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	4(%rdx), %edx
	shrw	%dx
	movzwl	%dx, %edx
	imull	$18725, %edx, %edx
	shrl	$16, %edx
	shrw	%dx
	cmpw	%dx, %ax
	jne	L101
	movzwl	-30(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	2(%rdx), %edx
	shrw	%dx
	movzwl	%dx, %edx
	imull	$18725, %edx, %edx
	shrl	$16, %edx
	shrw	%dx
	cmpw	%dx, %ax
	je	L102
L101:
	call	abort
L102:
	leaq	-32(%rbp), %rax
	movzwl	-24(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	8(%rdx), %edx
	shrw	%dx
	movzwl	%dx, %edx
	imull	$18725, %edx, %edx
	shrl	$16, %edx
	shrw	%dx
	cmpw	%dx, %ax
	jne	L103
	movzwl	-18(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	14(%rdx), %edx
	shrw	%dx
	movzwl	%dx, %edx
	imull	$18725, %edx, %edx
	shrl	$16, %edx
	shrw	%dx
	cmpw	%dx, %ax
	je	L104
L103:
	call	abort
L104:
	leaq	-32(%rbp), %rax
	movzwl	-20(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	12(%rdx), %edx
	shrw	%dx
	movzwl	%dx, %edx
	imull	$18725, %edx, %edx
	shrl	$16, %edx
	shrw	%dx
	cmpw	%dx, %ax
	jne	L105
	movzwl	-22(%rbp), %eax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	$u, %rdx
	movzwl	10(%rdx), %edx
	movzwl	%dx, %edx
	imull	$43691, %edx, %edx
	shrl	$16, %edx
	shrw	$2, %dx
	cmpw	%dx, %ax
	je	L106
L105:
	call	abort
L106:
	leaq	-32(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	u(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ur14141461461414
	movzwl	-32(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	(%rax), %ecx
	movl	%ecx, %eax
	shrw	%ax
	movzwl	%ax, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	shrw	%ax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	cmpw	%ax, %si
	jne	L107
	movzwl	-26(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	6(%rax), %ecx
	movzwl	%cx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	$2, %dx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L108
L107:
	call	abort
L108:
	leaq	-32(%rbp), %rax
	movzwl	-28(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	4(%rax), %ecx
	movl	%ecx, %eax
	shrw	%ax
	movzwl	%ax, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	shrw	%ax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	cmpw	%ax, %si
	jne	L109
	movzwl	-30(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	2(%rax), %ecx
	movl	%ecx, %eax
	shrw	%ax
	movzwl	%ax, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	shrw	%ax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	cmpw	%ax, %si
	je	L110
L109:
	call	abort
L110:
	leaq	-32(%rbp), %rax
	movzwl	-24(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	8(%rax), %ecx
	movl	%ecx, %eax
	shrw	%ax
	movzwl	%ax, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	shrw	%ax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	cmpw	%ax, %si
	jne	L111
	movzwl	-18(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	14(%rax), %ecx
	movl	%ecx, %eax
	shrw	%ax
	movzwl	%ax, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	shrw	%ax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	cmpw	%ax, %si
	je	L112
L111:
	call	abort
L112:
	leaq	-32(%rbp), %rax
	movzwl	-20(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	12(%rax), %ecx
	movl	%ecx, %eax
	shrw	%ax
	movzwl	%ax, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	shrw	%ax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	cmpw	%ax, %si
	jne	L113
	movzwl	-22(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	10(%rax), %ecx
	movzwl	%cx, %eax
	imull	$43691, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	$2, %dx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L114
L113:
	call	abort
L114:
	leaq	-32(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	u(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uq77777777
	movzwl	-32(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	imull	$9363, %edx, %edx
	shrl	$16, %edx
	subl	%edx, %eax
	shrw	%ax
	addl	%edx, %eax
	shrw	$2, %ax
	cmpw	%ax, %cx
	jne	L115
	movzwl	-26(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	6(%rax), %eax
	movzwl	%ax, %edx
	imull	$9363, %edx, %edx
	shrl	$16, %edx
	subl	%edx, %eax
	shrw	%ax
	addl	%edx, %eax
	shrw	$2, %ax
	cmpw	%ax, %cx
	je	L116
L115:
	call	abort
L116:
	leaq	-32(%rbp), %rax
	movzwl	-28(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	4(%rax), %eax
	movzwl	%ax, %edx
	imull	$9363, %edx, %edx
	shrl	$16, %edx
	subl	%edx, %eax
	shrw	%ax
	addl	%edx, %eax
	shrw	$2, %ax
	cmpw	%ax, %cx
	jne	L117
	movzwl	-30(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	2(%rax), %eax
	movzwl	%ax, %edx
	imull	$9363, %edx, %edx
	shrl	$16, %edx
	subl	%edx, %eax
	shrw	%ax
	addl	%edx, %eax
	shrw	$2, %ax
	cmpw	%ax, %cx
	je	L118
L117:
	call	abort
L118:
	leaq	-32(%rbp), %rax
	movzwl	-24(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	8(%rax), %eax
	movzwl	%ax, %edx
	imull	$9363, %edx, %edx
	shrl	$16, %edx
	subl	%edx, %eax
	shrw	%ax
	addl	%edx, %eax
	shrw	$2, %ax
	cmpw	%ax, %cx
	jne	L119
	movzwl	-18(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	14(%rax), %eax
	movzwl	%ax, %edx
	imull	$9363, %edx, %edx
	shrl	$16, %edx
	subl	%edx, %eax
	shrw	%ax
	addl	%edx, %eax
	shrw	$2, %ax
	cmpw	%ax, %cx
	je	L120
L119:
	call	abort
L120:
	leaq	-32(%rbp), %rax
	movzwl	-20(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	12(%rax), %eax
	movzwl	%ax, %edx
	imull	$9363, %edx, %edx
	shrl	$16, %edx
	subl	%edx, %eax
	shrw	%ax
	addl	%edx, %eax
	shrw	$2, %ax
	cmpw	%ax, %cx
	jne	L121
	movzwl	-22(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	10(%rax), %eax
	movzwl	%ax, %edx
	imull	$9363, %edx, %edx
	shrl	$16, %edx
	subl	%edx, %eax
	shrw	%ax
	addl	%edx, %eax
	shrw	$2, %ax
	cmpw	%ax, %cx
	je	L122
L121:
	call	abort
L122:
	leaq	-32(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	u(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ur77777777
	movzwl	-32(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	(%rax), %ecx
	movzwl	%cx, %eax
	imull	$9363, %eax, %eax
	shrl	$16, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	shrw	%dx
	addl	%edx, %eax
	shrw	$2, %ax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	jne	L123
	movzwl	-26(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	6(%rax), %ecx
	movzwl	%cx, %eax
	imull	$9363, %eax, %eax
	shrl	$16, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	shrw	%dx
	addl	%edx, %eax
	shrw	$2, %ax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L124
L123:
	call	abort
L124:
	leaq	-32(%rbp), %rax
	movzwl	-28(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	4(%rax), %ecx
	movzwl	%cx, %eax
	imull	$9363, %eax, %eax
	shrl	$16, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	shrw	%dx
	addl	%edx, %eax
	shrw	$2, %ax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	jne	L125
	movzwl	-30(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	2(%rax), %ecx
	movzwl	%cx, %eax
	imull	$9363, %eax, %eax
	shrl	$16, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	shrw	%dx
	addl	%edx, %eax
	shrw	$2, %ax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L126
L125:
	call	abort
L126:
	leaq	-32(%rbp), %rax
	movzwl	-24(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	8(%rax), %ecx
	movzwl	%cx, %eax
	imull	$9363, %eax, %eax
	shrl	$16, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	shrw	%dx
	addl	%edx, %eax
	shrw	$2, %ax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	jne	L127
	movzwl	-18(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	14(%rax), %ecx
	movzwl	%cx, %eax
	imull	$9363, %eax, %eax
	shrl	$16, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	shrw	%dx
	addl	%edx, %eax
	shrw	$2, %ax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L128
L127:
	call	abort
L128:
	leaq	-32(%rbp), %rax
	movzwl	-20(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	12(%rax), %ecx
	movzwl	%cx, %eax
	imull	$9363, %eax, %eax
	shrl	$16, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	shrw	%dx
	addl	%edx, %eax
	shrw	$2, %ax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	jne	L129
	movzwl	-22(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$u, %rax
	movzwl	10(%rax), %ecx
	movzwl	%cx, %eax
	imull	$9363, %eax, %eax
	shrl	$16, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	shrw	%dx
	addl	%edx, %eax
	shrw	$2, %ax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L130
L129:
	call	abort
L130:
	leaq	-32(%rbp), %rax
	addl	$1, -4(%rbp)
L34:
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	jbe	L131
	movl	$0, -4(%rbp)
	jmp	L132
L229:
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	s(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sq44444444
	movzwl	-48(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	(%rax), %eax
	leal	3(%rax), %ecx
	testw	%ax, %ax
	cmovs	%ecx, %eax
	sarw	$2, %ax
	cmpw	%ax, %dx
	jne	L133
	movzwl	-42(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	6(%rax), %eax
	leal	3(%rax), %ecx
	testw	%ax, %ax
	cmovs	%ecx, %eax
	sarw	$2, %ax
	cmpw	%ax, %dx
	je	L134
L133:
	call	abort
L134:
	leaq	-48(%rbp), %rax
	movzwl	-44(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	4(%rax), %eax
	leal	3(%rax), %ecx
	testw	%ax, %ax
	cmovs	%ecx, %eax
	sarw	$2, %ax
	cmpw	%ax, %dx
	jne	L135
	movzwl	-46(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	2(%rax), %eax
	leal	3(%rax), %ecx
	testw	%ax, %ax
	cmovs	%ecx, %eax
	sarw	$2, %ax
	cmpw	%ax, %dx
	je	L136
L135:
	call	abort
L136:
	leaq	-48(%rbp), %rax
	movzwl	-40(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	8(%rax), %eax
	leal	3(%rax), %ecx
	testw	%ax, %ax
	cmovs	%ecx, %eax
	sarw	$2, %ax
	cmpw	%ax, %dx
	jne	L137
	movzwl	-34(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	14(%rax), %eax
	leal	3(%rax), %ecx
	testw	%ax, %ax
	cmovs	%ecx, %eax
	sarw	$2, %ax
	cmpw	%ax, %dx
	je	L138
L137:
	call	abort
L138:
	leaq	-48(%rbp), %rax
	movzwl	-36(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	12(%rax), %eax
	leal	3(%rax), %ecx
	testw	%ax, %ax
	cmovs	%ecx, %eax
	sarw	$2, %ax
	cmpw	%ax, %dx
	jne	L139
	movzwl	-38(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	10(%rax), %eax
	leal	3(%rax), %ecx
	testw	%ax, %ax
	cmovs	%ecx, %eax
	sarw	$2, %ax
	cmpw	%ax, %dx
	je	L140
L139:
	call	abort
L140:
	leaq	-48(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	s(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sr44444444
	movzwl	-48(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	(%rax), %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$14, %dx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	cmpw	%ax, %cx
	jne	L141
	movzwl	-42(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	6(%rax), %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$14, %dx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	cmpw	%ax, %cx
	je	L142
L141:
	call	abort
L142:
	leaq	-48(%rbp), %rax
	movzwl	-44(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	4(%rax), %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$14, %dx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	cmpw	%ax, %cx
	jne	L143
	movzwl	-46(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	2(%rax), %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$14, %dx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	cmpw	%ax, %cx
	je	L144
L143:
	call	abort
L144:
	leaq	-48(%rbp), %rax
	movzwl	-40(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	8(%rax), %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$14, %dx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	cmpw	%ax, %cx
	jne	L145
	movzwl	-34(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	14(%rax), %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$14, %dx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	cmpw	%ax, %cx
	je	L146
L145:
	call	abort
L146:
	leaq	-48(%rbp), %rax
	movzwl	-36(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	12(%rax), %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$14, %dx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	cmpw	%ax, %cx
	jne	L147
	movzwl	-38(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	10(%rax), %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$14, %dx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	cmpw	%ax, %cx
	je	L148
L147:
	call	abort
L148:
	leaq	-48(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	s(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sq1428166432128
	movzwl	-48(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	(%rax), %eax
	cmpw	%ax, %dx
	jne	L149
	movzwl	-42(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	6(%rax), %eax
	leal	7(%rax), %ecx
	testw	%ax, %ax
	cmovs	%ecx, %eax
	sarw	$3, %ax
	cmpw	%ax, %dx
	je	L150
L149:
	call	abort
L150:
	leaq	-48(%rbp), %rax
	movzwl	-44(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	4(%rax), %eax
	movl	%eax, %ecx
	shrw	$15, %cx
	addl	%ecx, %eax
	sarw	%ax
	cmpw	%ax, %dx
	jne	L151
	movzwl	-46(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	2(%rax), %eax
	leal	3(%rax), %ecx
	testw	%ax, %ax
	cmovs	%ecx, %eax
	sarw	$2, %ax
	cmpw	%ax, %dx
	je	L152
L151:
	call	abort
L152:
	leaq	-48(%rbp), %rax
	movzwl	-40(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	8(%rax), %eax
	leal	15(%rax), %ecx
	testw	%ax, %ax
	cmovs	%ecx, %eax
	sarw	$4, %ax
	cmpw	%ax, %dx
	jne	L153
	movzwl	-34(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	14(%rax), %eax
	leal	127(%rax), %ecx
	testw	%ax, %ax
	cmovs	%ecx, %eax
	sarw	$7, %ax
	cmpw	%ax, %dx
	je	L154
L153:
	call	abort
L154:
	leaq	-48(%rbp), %rax
	movzwl	-36(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	12(%rax), %eax
	leal	31(%rax), %ecx
	testw	%ax, %ax
	cmovs	%ecx, %eax
	sarw	$5, %ax
	cmpw	%ax, %dx
	jne	L155
	movzwl	-38(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	10(%rax), %eax
	leal	63(%rax), %ecx
	testw	%ax, %ax
	cmovs	%ecx, %eax
	sarw	$6, %ax
	cmpw	%ax, %dx
	je	L156
L155:
	call	abort
L156:
	leaq	-48(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	s(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sr1428166432128
	movzwl	-48(%rbp), %eax
	testw	%ax, %ax
	jne	L157
	movzwl	-42(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	6(%rax), %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$13, %dx
	addl	%edx, %eax
	andl	$7, %eax
	subl	%edx, %eax
	cmpw	%ax, %cx
	je	L158
L157:
	call	abort
L158:
	leaq	-48(%rbp), %rax
	movzwl	-44(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	4(%rax), %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$15, %dx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	cmpw	%ax, %cx
	jne	L159
	movzwl	-46(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	2(%rax), %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$14, %dx
	addl	%edx, %eax
	andl	$3, %eax
	subl	%edx, %eax
	cmpw	%ax, %cx
	je	L160
L159:
	call	abort
L160:
	leaq	-48(%rbp), %rax
	movzwl	-40(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	8(%rax), %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$12, %dx
	addl	%edx, %eax
	andl	$15, %eax
	subl	%edx, %eax
	cmpw	%ax, %cx
	jne	L161
	movzwl	-34(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	14(%rax), %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$9, %dx
	addl	%edx, %eax
	andl	$127, %eax
	subl	%edx, %eax
	cmpw	%ax, %cx
	je	L162
L161:
	call	abort
L162:
	leaq	-48(%rbp), %rax
	movzwl	-36(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	12(%rax), %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$11, %dx
	addl	%edx, %eax
	andl	$31, %eax
	subl	%edx, %eax
	cmpw	%ax, %cx
	jne	L163
	movzwl	-38(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	10(%rax), %eax
	movl	%eax, %edx
	sarw	$15, %dx
	shrw	$10, %dx
	addl	%edx, %eax
	andl	$63, %eax
	subl	%edx, %eax
	cmpw	%ax, %cx
	je	L164
L163:
	call	abort
L164:
	leaq	-48(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	s(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sq33333333
	movzwl	-48(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	(%rax), %eax
	movswl	%ax, %ecx
	imull	$21846, %ecx, %ecx
	shrl	$16, %ecx
	sarw	$15, %ax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	cmpw	%ax, %dx
	jne	L165
	movzwl	-42(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	6(%rax), %eax
	movswl	%ax, %ecx
	imull	$21846, %ecx, %ecx
	shrl	$16, %ecx
	sarw	$15, %ax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	cmpw	%ax, %dx
	je	L166
L165:
	call	abort
L166:
	leaq	-48(%rbp), %rax
	movzwl	-44(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	4(%rax), %eax
	movswl	%ax, %ecx
	imull	$21846, %ecx, %ecx
	shrl	$16, %ecx
	sarw	$15, %ax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	cmpw	%ax, %dx
	jne	L167
	movzwl	-46(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	2(%rax), %eax
	movswl	%ax, %ecx
	imull	$21846, %ecx, %ecx
	shrl	$16, %ecx
	sarw	$15, %ax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	cmpw	%ax, %dx
	je	L168
L167:
	call	abort
L168:
	leaq	-48(%rbp), %rax
	movzwl	-40(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	8(%rax), %eax
	movswl	%ax, %ecx
	imull	$21846, %ecx, %ecx
	shrl	$16, %ecx
	sarw	$15, %ax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	cmpw	%ax, %dx
	jne	L169
	movzwl	-34(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	14(%rax), %eax
	movswl	%ax, %ecx
	imull	$21846, %ecx, %ecx
	shrl	$16, %ecx
	sarw	$15, %ax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	cmpw	%ax, %dx
	je	L170
L169:
	call	abort
L170:
	leaq	-48(%rbp), %rax
	movzwl	-36(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	12(%rax), %eax
	movswl	%ax, %ecx
	imull	$21846, %ecx, %ecx
	shrl	$16, %ecx
	sarw	$15, %ax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	cmpw	%ax, %dx
	jne	L171
	movzwl	-38(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	10(%rax), %eax
	movswl	%ax, %ecx
	imull	$21846, %ecx, %ecx
	shrl	$16, %ecx
	sarw	$15, %ax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	cmpw	%ax, %dx
	je	L172
L171:
	call	abort
L172:
	leaq	-48(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	s(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sr33333333
	movzwl	-48(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	(%rax), %ecx
	movswl	%cx, %eax
	imull	$21846, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	jne	L173
	movzwl	-42(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	6(%rax), %ecx
	movswl	%cx, %eax
	imull	$21846, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L174
L173:
	call	abort
L174:
	leaq	-48(%rbp), %rax
	movzwl	-44(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	4(%rax), %ecx
	movswl	%cx, %eax
	imull	$21846, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	jne	L175
	movzwl	-46(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	2(%rax), %ecx
	movswl	%cx, %eax
	imull	$21846, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L176
L175:
	call	abort
L176:
	leaq	-48(%rbp), %rax
	movzwl	-40(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	8(%rax), %ecx
	movswl	%cx, %eax
	imull	$21846, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	jne	L177
	movzwl	-34(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	14(%rax), %ecx
	movswl	%cx, %eax
	imull	$21846, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L178
L177:
	call	abort
L178:
	leaq	-48(%rbp), %rax
	movzwl	-36(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	12(%rax), %ecx
	movswl	%cx, %eax
	imull	$21846, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	jne	L179
	movzwl	-38(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	10(%rax), %ecx
	movswl	%cx, %eax
	imull	$21846, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L180
L179:
	call	abort
L180:
	leaq	-48(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	s(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sq65656565
	movzwl	-48(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	(%rax), %eax
	movswl	%ax, %ecx
	imull	$10923, %ecx, %ecx
	shrl	$16, %ecx
	sarw	$15, %ax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	cmpw	%ax, %dx
	jne	L181
	movzwl	-42(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	6(%rax), %eax
	movswl	%ax, %ecx
	imull	$26215, %ecx, %ecx
	shrl	$16, %ecx
	sarw	%cx
	sarw	$15, %ax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpw	%ax, %dx
	je	L182
L181:
	call	abort
L182:
	leaq	-48(%rbp), %rax
	movzwl	-44(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	4(%rax), %eax
	movswl	%ax, %ecx
	imull	$10923, %ecx, %ecx
	shrl	$16, %ecx
	sarw	$15, %ax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	cmpw	%ax, %dx
	jne	L183
	movzwl	-46(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	2(%rax), %eax
	movswl	%ax, %ecx
	imull	$26215, %ecx, %ecx
	shrl	$16, %ecx
	sarw	%cx
	sarw	$15, %ax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpw	%ax, %dx
	je	L184
L183:
	call	abort
L184:
	leaq	-48(%rbp), %rax
	movzwl	-40(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	8(%rax), %eax
	movswl	%ax, %ecx
	imull	$10923, %ecx, %ecx
	shrl	$16, %ecx
	sarw	$15, %ax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	cmpw	%ax, %dx
	jne	L185
	movzwl	-34(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	14(%rax), %eax
	movswl	%ax, %ecx
	imull	$26215, %ecx, %ecx
	shrl	$16, %ecx
	sarw	%cx
	sarw	$15, %ax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpw	%ax, %dx
	je	L186
L185:
	call	abort
L186:
	leaq	-48(%rbp), %rax
	movzwl	-36(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	12(%rax), %eax
	movswl	%ax, %ecx
	imull	$10923, %ecx, %ecx
	shrl	$16, %ecx
	sarw	$15, %ax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	cmpw	%ax, %dx
	jne	L187
	movzwl	-38(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	10(%rax), %eax
	movswl	%ax, %ecx
	imull	$26215, %ecx, %ecx
	shrl	$16, %ecx
	sarw	%cx
	sarw	$15, %ax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpw	%ax, %dx
	je	L188
L187:
	call	abort
L188:
	leaq	-48(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	s(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sr65656565
	movzwl	-48(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	(%rax), %ecx
	movswl	%cx, %eax
	imull	$10923, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	jne	L189
	movzwl	-42(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	6(%rax), %ecx
	movswl	%cx, %eax
	imull	$26215, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	sarw	%dx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L190
L189:
	call	abort
L190:
	leaq	-48(%rbp), %rax
	movzwl	-44(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	4(%rax), %ecx
	movswl	%cx, %eax
	imull	$10923, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	jne	L191
	movzwl	-46(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	2(%rax), %ecx
	movswl	%cx, %eax
	imull	$26215, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	sarw	%dx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L192
L191:
	call	abort
L192:
	leaq	-48(%rbp), %rax
	movzwl	-40(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	8(%rax), %ecx
	movswl	%cx, %eax
	imull	$10923, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	jne	L193
	movzwl	-34(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	14(%rax), %ecx
	movswl	%cx, %eax
	imull	$26215, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	sarw	%dx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L194
L193:
	call	abort
L194:
	leaq	-48(%rbp), %rax
	movzwl	-36(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	12(%rax), %ecx
	movswl	%cx, %eax
	imull	$10923, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	jne	L195
	movzwl	-38(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	10(%rax), %ecx
	movswl	%cx, %eax
	imull	$26215, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	sarw	%dx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L196
L195:
	call	abort
L196:
	leaq	-48(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	s(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sq14141461461414
	movzwl	-48(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	(%rax), %eax
	movswl	%ax, %ecx
	imull	$18725, %ecx, %ecx
	shrl	$16, %ecx
	sarw	$2, %cx
	sarw	$15, %ax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpw	%ax, %dx
	jne	L197
	movzwl	-42(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	6(%rax), %eax
	movswl	%ax, %ecx
	imull	$10923, %ecx, %ecx
	shrl	$16, %ecx
	sarw	$15, %ax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	cmpw	%ax, %dx
	je	L198
L197:
	call	abort
L198:
	leaq	-48(%rbp), %rax
	movzwl	-44(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	4(%rax), %eax
	movswl	%ax, %ecx
	imull	$18725, %ecx, %ecx
	shrl	$16, %ecx
	sarw	$2, %cx
	sarw	$15, %ax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpw	%ax, %dx
	jne	L199
	movzwl	-46(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	2(%rax), %eax
	movswl	%ax, %ecx
	imull	$18725, %ecx, %ecx
	shrl	$16, %ecx
	sarw	$2, %cx
	sarw	$15, %ax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpw	%ax, %dx
	je	L200
L199:
	call	abort
L200:
	leaq	-48(%rbp), %rax
	movzwl	-40(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	8(%rax), %eax
	movswl	%ax, %ecx
	imull	$18725, %ecx, %ecx
	shrl	$16, %ecx
	sarw	$2, %cx
	sarw	$15, %ax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpw	%ax, %dx
	jne	L201
	movzwl	-34(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	14(%rax), %eax
	movswl	%ax, %ecx
	imull	$18725, %ecx, %ecx
	shrl	$16, %ecx
	sarw	$2, %cx
	sarw	$15, %ax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpw	%ax, %dx
	je	L202
L201:
	call	abort
L202:
	leaq	-48(%rbp), %rax
	movzwl	-36(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	12(%rax), %eax
	movswl	%ax, %ecx
	imull	$18725, %ecx, %ecx
	shrl	$16, %ecx
	sarw	$2, %cx
	sarw	$15, %ax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpw	%ax, %dx
	jne	L203
	movzwl	-38(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	10(%rax), %eax
	movswl	%ax, %ecx
	imull	$10923, %ecx, %ecx
	shrl	$16, %ecx
	sarw	$15, %ax
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	cmpw	%ax, %dx
	je	L204
L203:
	call	abort
L204:
	leaq	-48(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	s(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sr14141461461414
	movzwl	-48(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	(%rax), %ecx
	movswl	%cx, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	sarw	$2, %dx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	cmpw	%ax, %si
	jne	L205
	movzwl	-42(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	6(%rax), %ecx
	movswl	%cx, %eax
	imull	$10923, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L206
L205:
	call	abort
L206:
	leaq	-48(%rbp), %rax
	movzwl	-44(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	4(%rax), %ecx
	movswl	%cx, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	sarw	$2, %dx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	cmpw	%ax, %si
	jne	L207
	movzwl	-46(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	2(%rax), %ecx
	movswl	%cx, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	sarw	$2, %dx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	cmpw	%ax, %si
	je	L208
L207:
	call	abort
L208:
	leaq	-48(%rbp), %rax
	movzwl	-40(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	8(%rax), %ecx
	movswl	%cx, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	sarw	$2, %dx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	cmpw	%ax, %si
	jne	L209
	movzwl	-34(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	14(%rax), %ecx
	movswl	%cx, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	sarw	$2, %dx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	cmpw	%ax, %si
	je	L210
L209:
	call	abort
L210:
	leaq	-48(%rbp), %rax
	movzwl	-36(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	12(%rax), %ecx
	movswl	%cx, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	sarw	$2, %dx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	leal	0(,%rax,8), %edx
	subl	%eax, %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	cmpw	%ax, %si
	jne	L211
	movzwl	-38(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	10(%rax), %ecx
	movswl	%cx, %eax
	imull	$10923, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L212
L211:
	call	abort
L212:
	leaq	-48(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	s(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sq77777777
	movzwl	-48(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	(%rax), %eax
	movswl	%ax, %ecx
	imull	$18725, %ecx, %ecx
	shrl	$16, %ecx
	sarw	%cx
	sarw	$15, %ax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpw	%ax, %dx
	jne	L213
	movzwl	-42(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	6(%rax), %eax
	movswl	%ax, %ecx
	imull	$18725, %ecx, %ecx
	shrl	$16, %ecx
	sarw	%cx
	sarw	$15, %ax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpw	%ax, %dx
	je	L214
L213:
	call	abort
L214:
	leaq	-48(%rbp), %rax
	movzwl	-44(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	4(%rax), %eax
	movswl	%ax, %ecx
	imull	$18725, %ecx, %ecx
	shrl	$16, %ecx
	sarw	%cx
	sarw	$15, %ax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpw	%ax, %dx
	jne	L215
	movzwl	-46(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	2(%rax), %eax
	movswl	%ax, %ecx
	imull	$18725, %ecx, %ecx
	shrl	$16, %ecx
	sarw	%cx
	sarw	$15, %ax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpw	%ax, %dx
	je	L216
L215:
	call	abort
L216:
	leaq	-48(%rbp), %rax
	movzwl	-40(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	8(%rax), %eax
	movswl	%ax, %ecx
	imull	$18725, %ecx, %ecx
	shrl	$16, %ecx
	sarw	%cx
	sarw	$15, %ax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpw	%ax, %dx
	jne	L217
	movzwl	-34(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	14(%rax), %eax
	movswl	%ax, %ecx
	imull	$18725, %ecx, %ecx
	shrl	$16, %ecx
	sarw	%cx
	sarw	$15, %ax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpw	%ax, %dx
	je	L218
L217:
	call	abort
L218:
	leaq	-48(%rbp), %rax
	movzwl	-36(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	12(%rax), %eax
	movswl	%ax, %ecx
	imull	$18725, %ecx, %ecx
	shrl	$16, %ecx
	sarw	%cx
	sarw	$15, %ax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpw	%ax, %dx
	jne	L219
	movzwl	-38(%rbp), %edx
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	10(%rax), %eax
	movswl	%ax, %ecx
	imull	$18725, %ecx, %ecx
	shrl	$16, %ecx
	sarw	%cx
	sarw	$15, %ax
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpw	%ax, %dx
	je	L220
L219:
	call	abort
L220:
	leaq	-48(%rbp), %rax
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	leaq	s(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	sr77777777
	movzwl	-48(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	(%rax), %ecx
	movswl	%cx, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	sarw	%dx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	jne	L221
	movzwl	-42(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	6(%rax), %ecx
	movswl	%cx, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	sarw	%dx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L222
L221:
	call	abort
L222:
	leaq	-48(%rbp), %rax
	movzwl	-44(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	4(%rax), %ecx
	movswl	%cx, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	sarw	%dx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	jne	L223
	movzwl	-46(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	2(%rax), %ecx
	movswl	%cx, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	sarw	%dx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L224
L223:
	call	abort
L224:
	leaq	-48(%rbp), %rax
	movzwl	-40(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	8(%rax), %ecx
	movswl	%cx, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	sarw	%dx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	jne	L225
	movzwl	-34(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	14(%rax), %ecx
	movswl	%cx, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	sarw	%dx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L226
L225:
	call	abort
L226:
	leaq	-48(%rbp), %rax
	movzwl	-36(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	12(%rax), %ecx
	movswl	%cx, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	sarw	%dx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	jne	L227
	movzwl	-38(%rbp), %esi
	movl	-4(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	$s, %rax
	movzwl	10(%rax), %ecx
	movswl	%cx, %eax
	imull	$18725, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	sarw	%dx
	movl	%ecx, %eax
	sarw	$15, %ax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	cmpw	%dx, %si
	je	L228
L227:
	call	abort
L228:
	leaq	-48(%rbp), %rax
	addl	$1, -4(%rbp)
L132:
	movl	-4(%rbp), %eax
	cmpl	$1, %eax
	jbe	L229
	movl	$0, %eax
	leave
	ret
