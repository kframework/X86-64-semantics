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
	.bss
count:
	.zero	4
foo1:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	count(%rip), %eax
	addl	$1, %eax
	movl	%eax, count(%rip)
	movl	$0, %eax
	popq	%rbp
	ret
foo2:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	count(%rip), %eax
	addl	$1, %eax
	movl	%eax, count(%rip)
	movl	$0, %eax
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	call	foo1
	cmpl	$1, %eax
	sete	%bl
	call	foo2
	cmpl	$1, %eax
	sete	%al
	andl	%ebx, %eax
	testb	%al, %al
	je	L14
	call	abort
L14:
	movl	count(%rip), %eax
	cmpl	$2, %eax
	je	L15
	call	abort
L15:
	movl	$0, %eax
	popq	%rbx
	popq	%rbp
	ret
