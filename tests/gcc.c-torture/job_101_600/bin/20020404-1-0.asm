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
	.string	".newsec"
dump_bfd_file:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movl	%r9d, -60(%rbp)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bfd_openw_with_cleanup
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$LC0, %esi
	movq	%rax, %rdi
	call	bfd_make_section_anyway
	movq	%rax, -16(%rbp)
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bfd_set_section_size
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	orl	$1, %edx
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$515, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	bfd_set_section_flags
	movq	-16(%rbp), %rax
	movl	$0, 28(%rax)
	movl	-60(%rbp), %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movl	$0, %ecx
	movq	%rax, %rdi
	call	bfd_set_section_contents
	leave
	ret
bfd_openw_with_cleanup:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$foo_bfd.2310, %eax
	popq	%rbp
	ret
bfd_make_section_anyway:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$foo_section.2315, %eax
	popq	%rbp
	ret
bfd_set_section_size:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, %eax
	popq	%rbp
	ret
bfd_set_section_flags:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	popq	%rbp
	ret
bfd_set_section_contents:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$40, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	cmpq	$514703087, -40(%rbp)
	je	L18
	call	abort
L18:
	leave
	ret
hello:
	.string	"hello"
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$514703087, %r9d
	movl	$hello, %r8d
	movl	$3735928559, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	dump_bfd_file
	movl	$0, %edi
	call	exit
	.local	foo_bfd.2310
	.comm	foo_bfd.2310,4,4
	.local	foo_section.2315
	.comm	foo_section.2315,32,32
