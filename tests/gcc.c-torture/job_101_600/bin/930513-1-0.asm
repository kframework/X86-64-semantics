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
	.comm	buf,2,1
LC1:
	.string	"%.0f"
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movabsq	$4617315517961601024, %rax
	movq	-8(%rbp), %rdx
	vmovq	%rax, %xmm0
	movl	$LC1, %esi
	movl	$buf, %edi
	movl	$1, %eax
	call	*%rdx
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$sprintf, %edi
	movl	$0, %eax
	call	f
	movzbl	buf(%rip), %eax
	cmpb	$53, %al
	jne	L11
	movzbl	buf+1(%rip), %eax
	testb	%al, %al
	je	L12
L11:
	call	abort
L12:
	movl	$0, %edi
	call	exit
