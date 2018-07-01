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
data:
	.string	"12345678901234567890123456789012345678901234567890123456789012345678901234567890"
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$64, %edx
	movl	$data, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L9
	call	abort
L9:
	leave
	ret
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -64(%rbp)
	movq	-72(%rbp), %rax
	addq	$4, %rax
	leaq	-64(%rbp), %rdx
	addq	$4, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	addq	$8, %rax
	leaq	-64(%rbp), %rdx
	addq	$8, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	addq	$12, %rax
	leaq	-64(%rbp), %rdx
	addq	$12, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	addq	$16, %rax
	leaq	-64(%rbp), %rdx
	addq	$16, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	addq	$20, %rax
	leaq	-64(%rbp), %rdx
	addq	$20, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	addq	$24, %rax
	leaq	-64(%rbp), %rdx
	addq	$24, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	addq	$28, %rax
	leaq	-64(%rbp), %rdx
	addq	$28, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	addq	$32, %rax
	leaq	-64(%rbp), %rdx
	addq	$32, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	addq	$36, %rax
	leaq	-64(%rbp), %rdx
	addq	$36, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	addq	$40, %rax
	leaq	-64(%rbp), %rdx
	addq	$40, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	addq	$44, %rax
	leaq	-64(%rbp), %rdx
	addq	$44, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	addq	$48, %rax
	leaq	-64(%rbp), %rdx
	addq	$48, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	addq	$52, %rax
	leaq	-64(%rbp), %rdx
	addq	$52, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	addq	$56, %rax
	leaq	-64(%rbp), %rdx
	addq	$56, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	movq	-72(%rbp), %rax
	addq	$60, %rax
	leaq	-64(%rbp), %rdx
	addq	$60, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	foo
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	leaq	-112(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %eax
	movl	$12, %ecx
	movq	%rdx, %rdi
	rep stosq
	movq	%rdi, %rdx
	movb	%al, (%rdx)
	addq	$1, %rdx
	leaq	-112(%rbp), %rax
	addq	$1, %rax
	movabsq	$4050765991979987505, %rsi
	movq	%rsi, (%rax)
	movabsq	$3906085646303834169, %rcx
	movq	%rcx, 8(%rax)
	movabsq	$3761405300628338743, %rsi
	movq	%rsi, 16(%rax)
	movabsq	$3616724998069630517, %rcx
	movq	%rcx, 24(%rax)
	movabsq	$3474870397276861491, %rsi
	movq	%rsi, 32(%rax)
	movabsq	$4050765991979987505, %rdi
	movq	%rdi, 40(%rax)
	movabsq	$3906085646303834169, %rdx
	movq	%rdx, 48(%rax)
	movabsq	$3761405300628338743, %rcx
	movq	%rcx, 56(%rax)
	movabsq	$3616724998069630517, %rsi
	movq	%rsi, 64(%rax)
	movabsq	$3474870397276861491, %rdi
	movq	%rdi, 72(%rax)
	movb	$0, 80(%rax)
	leaq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	bar
	movl	$0, %eax
	leave
	ret
