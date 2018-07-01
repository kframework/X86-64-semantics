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
	.comm	s1,48,32
	.comm	p1,8,8
	.comm	i,4,4
LC0:
	.string	"ok"
LC1:
	.string	"123"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$-1, s1(%rip)
	movq	$s1, p1(%rip)
	movq	p1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	func1
	cmpl	$-1, %eax
	jne	L10
	movl	$LC0, %edi
	movl	$0, %eax
	call	foo
	movl	$3, i(%rip)
	movq	$LC1, s1+32(%rip)
	movq	p1(%rip), %rdx
	movl	i(%rip), %ecx
	movslq	%ecx, %rax
	movq	8(%rdx,%rax,8), %rax
	leaq	1(%rax), %rsi
	movslq	%ecx, %rcx
	movq	%rsi, 8(%rdx,%rcx,8)
	movq	%rax, %rdi
	call	strlen
	cmpq	$3, %rax
	jne	L12
	jmp	L14
L10:
	call	abort
L14:
	movl	$LC0, %edi
	movl	$0, %eax
	call	foo
	movl	$0, %edi
	call	exit
L12:
	call	abort
func1:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	ret
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	ret
