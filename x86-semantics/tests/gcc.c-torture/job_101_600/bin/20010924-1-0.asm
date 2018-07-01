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
	.string	"62"
a1:
	.byte	52
	.zero	7
	.quad	LC0
a2:
	.byte	118
	.ascii	"cq"
a3:
	.byte	111
	.string	"wx"
a4:
	.byte	57
	.byte	101
	.byte	98
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	a1(%rip), %eax
	cmpb	$52, %al
	je	L10
	call	abort
L10:
	movq	a1+8(%rip), %rax
	movzbl	(%rax), %eax
	cmpb	$54, %al
	je	L11
	call	abort
L11:
	movq	a1+8(%rip), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	cmpb	$50, %al
	je	L12
	call	abort
L12:
	movq	a1+8(%rip), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	L13
	call	abort
L13:
	movzbl	a2(%rip), %eax
	cmpb	$118, %al
	je	L14
	call	abort
L14:
	movzbl	a2+1(%rip), %eax
	cmpb	$99, %al
	je	L15
	call	abort
L15:
	movzbl	a2+2(%rip), %eax
	cmpb	$113, %al
	je	L16
	call	abort
L16:
	movzbl	a3(%rip), %eax
	cmpb	$111, %al
	je	L17
	call	abort
L17:
	movzbl	a3+1(%rip), %eax
	cmpb	$119, %al
	je	L18
	call	abort
L18:
	movzbl	a3+2(%rip), %eax
	cmpb	$120, %al
	je	L19
	call	abort
L19:
	movzbl	a4(%rip), %eax
	cmpb	$57, %al
	je	L20
	call	abort
L20:
	movzbl	a4+1(%rip), %eax
	cmpb	$101, %al
	je	L21
	call	abort
L21:
	movzbl	a4+2(%rip), %eax
	cmpb	$98, %al
	je	L22
	call	abort
L22:
	movl	$0, %eax
	popq	%rbp
	ret
