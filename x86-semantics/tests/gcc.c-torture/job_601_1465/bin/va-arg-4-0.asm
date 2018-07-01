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
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	L10
	vmovaps	%xmm0, -128(%rbp)
	vmovaps	%xmm1, -112(%rbp)
	vmovaps	%xmm2, -96(%rbp)
	vmovaps	%xmm3, -80(%rbp)
	vmovaps	%xmm4, -64(%rbp)
	vmovaps	%xmm5, -48(%rbp)
	vmovaps	%xmm6, -32(%rbp)
	vmovaps	%xmm7, -16(%rbp)
L10:
	movq	%rdi, -216(%rbp)
	movzbl	16(%rbp), %eax
	cmpb	$97, %al
	jne	L11
	movzbl	17(%rbp), %eax
	cmpb	$98, %al
	jne	L11
	movzbl	18(%rbp), %eax
	cmpb	$99, %al
	je	L12
L11:
	call	abort
L12:
	movl	$8, -200(%rbp)
	movl	$48, -196(%rbp)
	leaq	48(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L13
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	L14
L13:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L14:
	movl	(%rax), %eax
	cmpl	$42, %eax
	je	L15
	call	abort
L15:
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L16
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	L17
L16:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L17:
	movl	(%rax), %eax
	cmpl	$120, %eax
	je	L18
	call	abort
L18:
	movl	-200(%rbp), %eax
	cmpl	$48, %eax
	jae	L19
	movq	-184(%rbp), %rdx
	movl	-200(%rbp), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movl	-200(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -200(%rbp)
	jmp	L20
L19:
	movq	-192(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -192(%rbp)
L20:
	movl	(%rax), %eax
	testl	%eax, %eax
	je	L9
	call	abort
L9:
	leave
	ret
LC0:
	.string	""
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	x.2265+24(%rip)
	pushq	x.2265+16(%rip)
	pushq	x.2265+8(%rip)
	pushq	x.2265(%rip)
	movl	$0, %ecx
	movl	$120, %edx
	movl	$42, %esi
	movl	$LC0, %edi
	movl	$0, %eax
	call	f
	addq	$32, %rsp
	movl	$0, %edi
	call	exit
x.2265:
	.string	"abc"
	.zero	28
