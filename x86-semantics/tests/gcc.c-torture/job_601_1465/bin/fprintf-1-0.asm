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
	.string	"hello"
LC1:
	.string	"hello\n"
LC2:
	.string	"a"
LC3:
	.string	""
LC4:
	.string	"%s"
LC5:
	.string	"%c"
LC6:
	.string	"%s\n"
LC7:
	.string	"%d\n"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$5, %edx
	movl	$1, %esi
	movl	$LC0, %edi
	call	fwrite
	movq	stdout(%rip), %rax
	movl	$LC0, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	cmpl	$5, %eax
	je	L10
	call	abort
L10:
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$6, %edx
	movl	$1, %esi
	movl	$LC1, %edi
	call	fwrite
	movq	stdout(%rip), %rax
	movl	$LC1, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	cmpl	$6, %eax
	je	L11
	call	abort
L11:
	movq	stdout(%rip), %rax
	movq	%rax, %rsi
	movl	$97, %edi
	call	fputc
	movq	stdout(%rip), %rax
	movl	$LC2, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	cmpl	$1, %eax
	je	L12
	call	abort
L12:
	movq	stdout(%rip), %rax
	movl	$LC3, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	testl	%eax, %eax
	je	L13
	call	abort
L13:
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$5, %edx
	movl	$1, %esi
	movl	$LC0, %edi
	call	fwrite
	movq	stdout(%rip), %rax
	movl	$LC0, %edx
	movl	$LC4, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	cmpl	$5, %eax
	je	L14
	call	abort
L14:
	movq	stdout(%rip), %rax
	movq	%rax, %rcx
	movl	$6, %edx
	movl	$1, %esi
	movl	$LC1, %edi
	call	fwrite
	movq	stdout(%rip), %rax
	movl	$LC1, %edx
	movl	$LC4, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	cmpl	$6, %eax
	je	L15
	call	abort
L15:
	movq	stdout(%rip), %rax
	movq	%rax, %rsi
	movl	$97, %edi
	call	fputc
	movq	stdout(%rip), %rax
	movl	$LC2, %edx
	movl	$LC4, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	cmpl	$1, %eax
	je	L16
	call	abort
L16:
	movq	stdout(%rip), %rax
	movl	$LC3, %edx
	movl	$LC4, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	testl	%eax, %eax
	je	L17
	call	abort
L17:
	movq	stdout(%rip), %rax
	movq	%rax, %rsi
	movl	$120, %edi
	call	fputc
	movq	stdout(%rip), %rax
	movl	$120, %edx
	movl	$LC5, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	cmpl	$1, %eax
	je	L18
	call	abort
L18:
	movq	stdout(%rip), %rax
	movl	$LC1, %edx
	movl	$LC6, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movq	stdout(%rip), %rax
	movl	$LC1, %edx
	movl	$LC6, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	cmpl	$7, %eax
	je	L19
	call	abort
L19:
	movq	stdout(%rip), %rax
	movl	$0, %edx
	movl	$LC7, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	movq	stdout(%rip), %rax
	movl	$0, %edx
	movl	$LC7, %esi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf
	cmpl	$2, %eax
	je	L20
	call	abort
L20:
	movl	$0, %eax
	popq	%rbp
	ret
