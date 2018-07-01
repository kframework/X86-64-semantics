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
	.comm	ap_standalone,4,4
ap_check_cmd_context:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, %eax
	popq	%rbp
	ret
LC0:
	.string	"inetd"
LC1:
	.string	"standalone"
LC2:
	.string	"ServerType must be either 'inetd' or 'standalone'"
server_type:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	$31, %esi
	movq	%rax, %rdi
	call	ap_check_cmd_context
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	L12
	movq	-8(%rbp), %rax
	jmp	L13
L12:
	movq	-40(%rbp), %rax
	movl	$LC0, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	L14
	movl	$0, ap_standalone(%rip)
	jmp	L15
L14:
	movq	-40(%rbp), %rax
	movl	$LC1, %esi
	movq	%rax, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	L16
	movl	$1, ap_standalone(%rip)
	jmp	L15
L16:
	movl	$LC2, %eax
	jmp	L13
L15:
	movl	$0, %eax
L13:
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$LC1, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	server_type
	movl	$0, %eax
	popq	%rbp
	ret
