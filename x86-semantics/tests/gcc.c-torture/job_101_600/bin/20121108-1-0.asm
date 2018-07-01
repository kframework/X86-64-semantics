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
temp:
	.string	"192.168.190.160"
result:
	.long	-1062682976
strtoul1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	leaq	3(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	cmpq	$temp, -8(%rbp)
	jne	L10
	movl	$192, %eax
	jmp	L11
L10:
	cmpq	$temp+4, -8(%rbp)
	jne	L12
	movl	$168, %eax
	jmp	L11
L12:
	cmpq	$temp+8, -8(%rbp)
	jne	L13
	movl	$190, %eax
	jmp	L11
L13:
	cmpq	$temp+12, -8(%rbp)
	jne	L14
	movl	$160, %eax
	jmp	L11
L14:
	call	abort
L11:
	leave
	ret
string_to_ip:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	L16
	movl	$0, %eax
	jmp	L25
L16:
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	L18
L24:
	cmpq	$0, -40(%rbp)
	je	L19
	leaq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtoul1
	jmp	L20
L19:
	movl	$0, %eax
L20:
	movl	%eax, -12(%rbp)
	sall	$8, -4(%rbp)
	movl	-12(%rbp), %eax
	movzbl	%al, %eax
	orl	%eax, -4(%rbp)
	cmpq	$0, -40(%rbp)
	je	L21
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L22
	movq	-24(%rbp), %rax
	addq	$1, %rax
	jmp	L23
L22:
	movq	-24(%rbp), %rax
L23:
	movq	%rax, -40(%rbp)
L21:
	addl	$1, -8(%rbp)
L18:
	cmpl	$3, -8(%rbp)
	jle	L24
	movl	-4(%rbp), %eax
L25:
	leave
	ret
LC0:
	.string	"%x\n"
LC1:
	.string	"WORKS."
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$temp, %edi
	call	string_to_ip
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$LC0, %edi
	movl	$0, %eax
	call	printf
	movl	result(%rip), %eax
	movl	%eax, %esi
	movl	$LC0, %edi
	movl	$0, %eax
	call	printf
	movl	-4(%rbp), %edx
	movl	result(%rip), %eax
	cmpl	%eax, %edx
	je	L27
	call	abort
L27:
	movl	$LC1, %edi
	call	puts
	movl	$0, %eax
	leave
	ret
