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
LC0:
	.string	"foobarbaz"
test1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -16(%rbp)
	leaq	LC0(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movq	-16(%rbp), %rax
	leave
	ret
check2:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	r.2273(%rip), %rax
	cmpq	$5, %rax
	je	L12
	call	abort
L12:
	movq	r.2273(%rip), %rax
	addq	$1, %rax
	movq	%rax, r.2273(%rip)
	movq	r.2273(%rip), %rax
	popq	%rbp
	ret
test2:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	call	check2
	leaq	LC0(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	leave
	ret
LC1:
	.string	"az"
LC2:
	.string	"baz"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-16(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	test1
	cmpq	$8, %rax
	jne	L16
	leaq	-16(%rbp), %rax
	movl	$3, %edx
	movl	$LC1, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L17
L16:
	call	abort
L17:
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	test2
	leaq	-16(%rbp), %rax
	movl	$4, %edx
	movl	$LC2, %esi
	movq	%rax, %rdi
	call	memcmp
	testl	%eax, %eax
	je	L18
	call	abort
L18:
	movl	$0, %edi
	call	exit
r.2273:
	.quad	5
