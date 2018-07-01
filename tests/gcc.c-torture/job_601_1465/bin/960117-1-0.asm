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
	.local	id_space
	.comm	id_space,66,64
	.bss
curval:
	.zero	10
	.local	idc
	.comm	idc,2,2
	.local	cur_line
	.comm	cur_line,4,4
	.local	char_pos
	.comm	char_pos,4,4
get_id:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movq	curval+2(%rip), %rax
	movzbl	-4(%rbp), %edx
	movb	%dl, (%rax)
	popq	%rbp
	ret
get_tok:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$99, -1(%rbp)
	movzwl	idc(%rip), %eax
	cwtl
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$5, %rax
	addq	%rdx, %rax
	addq	$id_space, %rax
	movq	%rax, curval+2(%rip)
	movl	cur_line(%rip), %eax
	sall	$10, %eax
	movl	%eax, %edx
	movl	char_pos(%rip), %eax
	orl	%edx, %eax
	movw	%ax, curval(%rip)
	movsbl	-1(%rbp), %eax
	movl	%eax, %edi
	call	get_id
	leave
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$0, %eax
	call	get_tok
	movl	$0, %edi
	call	exit
