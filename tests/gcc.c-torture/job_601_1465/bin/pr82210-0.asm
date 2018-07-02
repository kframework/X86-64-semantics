foo:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movl	%edi, -84(%rbp)
	movq	%rsp, %rax
	movq	%rax, %rbx
	movl	-84(%rbp), %esi
	movslq	%esi, %rax
	movq	%rax, %rdx
	movl	$0, %ecx
	movslq	%esi, %rax
	subq	$1, %rax
	movq	%rax, -64(%rbp)
	movslq	%esi, %rax
	movq	%rax, %r12
	movl	$0, %r13d
	movslq	%esi, %rax
	leaq	(%rax,%rax), %rdi
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rax
	movq	%rax, %r14
	movl	$0, %r15d
	movslq	%ecx, %rax
	subq	$1, %rax
	movq	%rax, -72(%rbp)
	movslq	%ecx, %rax
	movq	%rax, -112(%rbp)
	movq	$0, -104(%rbp)
	movslq	%esi, %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	movq	%r10, %rax
	movq	%r11, %rdx
	shldq	$3, %rax, %rdx
	salq	$3, %rax
	addq	$127, %rax
	adcq	$0, %rdx
	movq	%rax, %r11
	andq	$-128, %r11
	movq	%r11, -128(%rbp)
	movq	%rdx, %rax
	andb	$255, %ah
	movq	%rax, -120(%rbp)
	movslq	%esi, %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %r8
	movl	$0, %r9d
	movq	%r8, %rax
	movq	%r9, %rdx
	shldq	$3, %rax, %rdx
	salq	$3, %rax
	addq	$127, %rax
	adcq	$0, %rdx
	movq	%rax, %r9
	andq	$-128, %r9
	movq	%r9, -144(%rbp)
	movq	%rdx, %rax
	andb	$255, %ah
	movq	%rax, -136(%rbp)
	movslq	%esi, %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	$15, %rax
	andq	$-16, %rax
	leaq	15(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$15, %rax
	shrq	$4, %rax
	salq	$4, %rax
	movq	%rax, -80(%rbp)
	movl	$0, -52(%rbp)
	jmp	L2
L3:
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	movw	$4660, (%rax,%rdx,2)
	addl	$1, -52(%rbp)
L2:
	movl	-52(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	L3
	movl	$0, -52(%rbp)
	jmp	L4
L5:
	movq	%rdi, %rcx
	shrq	$4, %rcx
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	$0, (%rax,%rdx,4)
	addl	$1, -52(%rbp)
L4:
	movl	-52(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	L5
	movl	$0, -52(%rbp)
	jmp	L6
L9:
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rax,%rdx,2), %eax
	cmpw	$4660, %ax
	jne	L7
	movq	%rdi, %rcx
	shrq	$4, %rcx
	movq	-80(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rcx
	addq	%rcx, %rdx
	movl	(%rax,%rdx,4), %eax
	testl	%eax, %eax
	je	L8
L7:
	call	abort
L8:
	addl	$1, -52(%rbp)
L6:
	movl	-52(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jl	L9
	movq	%rbx, %rsp
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.globl _start
_start:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$15, %edi
	call	foo
	movl	$0, %eax
	popq	%rbp
	ret
