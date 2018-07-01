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
check:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	L9
	call	abort
L9:
	leave
	ret
	.local	buf
	.comm	buf,8,8
	.local	l
	.comm	l,4,4
	.local	i
	.comm	i,4,4
_fputs:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, buf(%rip)
	movl	$0, i(%rip)
	movq	buf(%rip), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	movl	%eax, l(%rip)
	popq	%rbp
	ret
_fgetc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	buf(%rip), %rdx
	movl	i(%rip), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
	movl	i(%rip), %edx
	movl	l(%rip), %eax
	cmpl	%eax, %edx
	jle	L13
	movl	$-1, %eax
	jmp	L14
L13:
	movzbl	-1(%rbp), %eax
L14:
	popq	%rbp
	ret
LC0:
	.string	"oops!\n"
string:
	.quad	LC0
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	string(%rip), %rax
	movq	%rax, %rdi
	call	_fputs
	movl	$0, -4(%rbp)
	jmp	L16
L17:
	movl	$0, %eax
	call	_fgetc
	movsbl	%al, %eax
	movl	%eax, -8(%rbp)
	movq	string(%rip), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	-8(%rbp), %eax
	sete	%al
	movzbl	%al, %edx
	movq	string(%rip), %rcx
	movl	-4(%rbp), %eax
	cltq
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	movl	-8(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	call	check
	addl	$1, -4(%rbp)
L16:
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movq	string(%rip), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	cmpq	%rax, %rsi
	jb	L17
	movl	$0, %eax
	leave
	ret
